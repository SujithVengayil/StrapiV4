'use strict';

/**
 * associate service
 */

const { createCoreService } = require('@strapi/strapi').factories;

module.exports = createCoreService('api::associate.associate');
