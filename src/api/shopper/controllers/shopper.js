'use strict';

/**
 * shopper controller
 */

const { createCoreController } = require('@strapi/strapi').factories;
module.exports = createCoreController('api::shopper.shopper', ({ strapi }) => ({
    async checkShopperExist(ctx) {
        try {
            const vatomUserId = ctx.request.body.vatomUserId;

            const results = await strapi.db.query('api::shopper.shopper').findOne({
                where: {
                    vatom_user_id: vatomUserId,
                },
            });

            let response = {
                success: false,
                data: null,
                message: null
            }
            // console.log("results.length ", results)
            if (results) {
                const sanitizedResults = await this.sanitizeOutput(results, ctx);
                response = {
                    success: true,
                    data: sanitizedResults,
                    message: "Vatom Id exist!"
                }
                ctx.body = response;

            } else {
                response = {
                    success: false,
                    data: null,
                    message: "Vatom Id not exist!"
                }
                ctx.body = response;
            }

            // console.log("sanitizedResults ", sanitizedResults);
        } catch (err) {
            // console.log("err ", err);
            ctx.body = err;
        }
    },
}));
