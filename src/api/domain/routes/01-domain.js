'use strict';

/**
 * domain router
 */

const { createCoreRouter } = require('@strapi/strapi').factories;

module.exports = {
    routes: [
      { // Path defined with an URL parameter
        method: 'POST',
        path: '/domains/getReceiptMessageByChainId', 
        handler: 'domain.getReceiptMessageByChainId',
      }
    ]
  }
