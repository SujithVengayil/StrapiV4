'use strict';

/**
 * tokenized-receipt service
 */

const { createCoreService } = require('@strapi/strapi').factories;

module.exports = createCoreService('api::tokenized-receipt.tokenized-receipt');
