'use strict';

/**
 * nft-collection service
 */

const { createCoreService } = require('@strapi/strapi').factories;

module.exports = createCoreService('api::nft-collection.nft-collection');
