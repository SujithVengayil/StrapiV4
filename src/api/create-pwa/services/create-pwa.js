'use strict';

/**
 * create-pwa service
 */

const { createCoreService } = require('@strapi/strapi').factories;

module.exports = createCoreService('api::create-pwa.create-pwa');
