'use strict';

module.exports = ({ strapi }) => ({
  index(ctx) {
    ctx.body = strapi
      .plugin('execute-drop')
      .service('myService')
      .getWelcomeMessage();
  },
});
