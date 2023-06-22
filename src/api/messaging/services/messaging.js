'use strict';

/**
 * messaging service
 */

const { createCoreService } = require('@strapi/strapi').factories;

module.exports = createCoreService('api::messaging.messaging');
