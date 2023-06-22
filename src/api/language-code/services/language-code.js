'use strict';

/**
 * language-code service
 */

const { createCoreService } = require('@strapi/strapi').factories;

module.exports = createCoreService('api::language-code.language-code');
