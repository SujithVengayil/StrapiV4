'use strict';

/**
 * domain controller
 */

const { createCoreController } = require('@strapi/strapi').factories;

module.exports = createCoreController('api::domain.domain', ({ strapi }) => ({
    //-- getting the ReceiptMessage by chain id
    async getReceiptMessageByChainId(ctx) {
        try {
            const chainId = ctx.request.body.chain_id;
            let response = {
                success: false,
                data: null,
                message: null
            }
            if (!chainId) {
                response = {
                    success: false,
                    data: null,
                    message: "Please enter the Chain Id"
                }
            } else {
                const results = await strapi.db.query('api::domain.domain').findMany({
                    select: ['id'],
                    where: {
                        chains: { id: chainId },
                        published_at: {
                            $notNull: true,
                        },
                    },
                    populate: {
                        receiptMessage: true
                    }
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
                        message: "Chain id not available."
                    }
                }
            }
            ctx.body = response;

        } catch (err) {
            ctx.body = err;
        }
    }
}));
