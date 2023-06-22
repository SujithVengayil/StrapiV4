'use strict';

/**
 * associate controller
 */

const { createCoreController } = require('@strapi/strapi').factories;

module.exports = createCoreController('api::associate.associate');
