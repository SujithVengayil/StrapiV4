'use strict';

/**
 * country-code service
 */

const { createCoreService } = require('@strapi/strapi').factories;

module.exports = createCoreService('api::country-code.country-code');
