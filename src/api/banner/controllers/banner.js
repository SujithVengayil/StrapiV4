'use strict';

/**
 * banner controller
 */

const { createCoreController } = require('@strapi/strapi').factories;

module.exports = createCoreController('api::banner.banner',({strapi})=>({
    // async hello(ctx) {
    //     try {
    //        console.log("hello")
    //     } catch (err) {
    //         // console.log("err ", err);
    //         ctx.body = err;
    //     }
    // },
}));
