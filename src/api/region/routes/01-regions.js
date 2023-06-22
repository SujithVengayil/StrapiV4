'use strict';

/**
 * region router
 */

const { createCoreRouter } = require('@strapi/strapi').factories;


module.exports = {
    routes: [
      { // Path defined with an URL parameter
        method: 'POST',
        path: '/regions/getRegionsByDivsionStoreNo', 
        handler: 'region.getRegionsByDivsionStoreNo',
      }
    ]
  }
