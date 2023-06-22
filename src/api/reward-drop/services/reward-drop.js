'use strict';

/**
 * reward-drop service
 */

const { createCoreService } = require('@strapi/strapi').factories;

module.exports = createCoreService('api::reward-drop.reward-drop');
