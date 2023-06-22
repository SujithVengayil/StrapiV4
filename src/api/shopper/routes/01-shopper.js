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
        path: '/shoppers/checkShopperExist', 
        handler: 'shopper.checkShopperExist',
      },
    //   { // Path defined with a regular expression
    //     method: 'GET',
    //     path: '/shoppers/:category([a-z]+)', // Only match when the URL parameter is composed of lowercase letters
    //     handler: 'shopper.findByCategory',
    //   }
    ]
  }
