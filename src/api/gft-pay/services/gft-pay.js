'use strict';

/**
 * gft-pay service
 */

const { createCoreService } = require('@strapi/strapi').factories;

module.exports = createCoreService('api::gft-pay.gft-pay');
