'use strict';

/**
 * collectible service
 */

const { createCoreService } = require('@strapi/strapi').factories;

module.exports = createCoreService('api::collectible.collectible');
