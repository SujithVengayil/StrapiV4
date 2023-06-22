'use strict';

/**
 * region controller
 */

const { createCoreController } = require('@strapi/strapi').factories;

module.exports = createCoreController('api::region.region', ({ strapi }) => ({
    //-- getting the region by store number and division
    async getRegionsByDivsionStoreNo(ctx) {

        try {
            const division = ctx.request.body.division;
            const storeNumber = ctx.request.body.store_number;

            let response = {
                success: false,
                data: null,
                message: null
            }
            if (!division || !storeNumber) {
                response = {
                    success: false,
                    data: null,
                    message: "Please enter the division and store number"
                }
            } else {
                // console.log("SS ", division, storeNumber)
                const results = await strapi.db.query('api::region.region').findMany({
                    where: {
                        division: division,
                        stores: {
                            number: storeNumber
                        },
                        published_at: {
                            $notNull: true,
                        },
                    },
                    populate: {
                        stores: true,
                        chain:true,
                        // regions: {
                        //     populate: ['store', 'chain'],
                        // },
                    },
                });

                // console.log("results.length ", results)
                if (results != "") {
                    const sanitizedUpdatedResults = await this.sanitizeOutput(results, ctx);
                    response = {
                        success: true,
                        data: sanitizedUpdatedResults,
                        message: "Data provided successfully."
                    }
                } else {
                    response = {
                        success: false,
                        data: null,
                        message: "Please enter a correct store number and division."
                    }
                }
            }
            ctx.body = response;

        } catch (err) {
            ctx.body = err;
        }
    }
}));
