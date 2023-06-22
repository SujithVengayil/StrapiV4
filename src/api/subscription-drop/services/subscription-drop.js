'use strict';

/**
 * subscription-drop service
 */

const { createCoreService } = require('@strapi/strapi').factories;

module.exports = createCoreService('api::subscription-drop.subscription-drop');
