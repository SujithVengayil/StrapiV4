'use strict';

/**
 * coupon-drop service
 */

const { createCoreService } = require('@strapi/strapi').factories;

module.exports = createCoreService('api::coupon-drop.coupon-drop');
