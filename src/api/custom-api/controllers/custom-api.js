'use strict';

/**
 * A set of functions called "actions" for `custom-api`
 */

module.exports = {
  getCompanyProfileById: async (ctx, next) => {
    try {
      //-- ctx.request.query for fetching data from query string
      // console.log(">>>>> ctx.request", ctx.request.query)
      let countryId = ctx.request.query;
      console.log(ctx.request.query)
      const data = await strapi
        .service("api::custom-api.custom-api")
        .getCompanyProfileData(countryId);

      ctx.body = data;

    } catch (err) {
      ctx.body = err;
    }
  },
  exampleAction: async (ctx, next) => {
    try {
      //-- ctx.request.query for fetching data from query string
      // console.log(">>>>> ctx.request", ctx.request.query)
      ctx.body = 'ok';
      const data = await strapi
        .service("api::custom-api.custom-api")
        .postsReport();
      // console.log(data, "data");

      ctx.body = data;

      // await request(`/api/country_codes?${query}`);
    } catch (err) {
      ctx.body = err;
    }
  },
  exampleAction1: async (ctx, next) => {
    try {

      //-- We can pass data in post service as a json format and get
      // console.log(">>>>> ctx.paramsw", ctx.request.body)      

      ctx.body = 'ok';
      const data = await strapi
        .service("api::custom-api.custom-api")
        .postsReport();
      // console.log(data, "data");

      ctx.body = data;

      // await request(`/api/country_codes?${query}`);
    } catch (err) {
      ctx.body = err;
    }
  }
};
