'use strict';

/**
 * shopper router
 */

const { createCoreRouter } = require('@strapi/strapi').factories;

// module.exports = createCoreRouter('api::shopper.shopper');

module.exports = {
    routes: [
      { // Path defined with an URL parameter
        method: 'POST',
        path: '/shopper-coupons/updateShopperCouponByTokenId', 
        handler: 'shopper-coupon.updateShopperCouponByTokenId',
      }
    ]
  }
