'use strict';

/**
 * adc-drop service
 */

const { createCoreService } = require('@strapi/strapi').factories;

module.exports = createCoreService('api::adc-drop.adc-drop');
