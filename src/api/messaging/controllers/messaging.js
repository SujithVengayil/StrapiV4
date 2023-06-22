'use strict';

/**
 * messaging controller
 */

const { createCoreController } = require('@strapi/strapi').factories;

module.exports = createCoreController('api::messaging.messaging');
