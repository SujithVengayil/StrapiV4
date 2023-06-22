'use strict';

/**
 * shopper-coupon controller
 */

const { createCoreController } = require('@strapi/strapi').factories;


module.exports = createCoreController('api::shopper-coupon.shopper-coupon', ({ strapi }) => ({
    //-- updating the shopper coupon data based on token id
    async updateShopperCouponByTokenId(ctx) {
        try {
            const vatomTokenId = ctx.request.body.vatom_token_id;
            const data = ctx.request.body.data;

            const isExist = await strapi.db.query('api::shopper-coupon.shopper-coupon').findOne({
                where: {
                    vatom_token_id: vatomTokenId,
                },
            });

            let response = {
                success: false,
                data: null,
                message: null
            }
            // console.log("results.length ", results)
            if (isExist) {
                const updateExist = await strapi.db.query('api::shopper-coupon.shopper-coupon').update({
                    data,
                    where: {
                        vatom_token_id: vatomTokenId,
                    },
                });

                const sanitizedUpdatedResults = await this.sanitizeOutput(updateExist, ctx);
                response = {
                    success: true,
                    data: sanitizedUpdatedResults,
                    message: "Data updated successfully."
                }
            } else {
                response = {
                    success: false,
                    data: null,
                    message: "Token Id not available."
                }
            }
            ctx.body = response;

        } catch (err) {
            ctx.body = err;
        }
    },
}));
