'use strict';

/**
 * game service
 */

const { createCoreService } = require('@strapi/strapi').factories;

module.exports = createCoreService('api::reward-game.reward-game');
