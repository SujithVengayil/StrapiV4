'use strict';

/**
 * `add-edit-shopper` middleware
 */

module.exports = (config, { strapi }) => {
  // Add your own logic here.
  return async (ctx, next) => {
    console.log('In add-edit-shopper middleware.');

    let req = ctx.request.body.data;
    // Custom validation logic
    
    let response = {
      success: false,
      status:null,
      data: null,
      message: null
    }

    let errMessage = [];
    console.log("NVN", req)
    if (req.short_name_tag == '') {
      errMessage.push('short_name_tag is required.');
    }
    console.log("errMessage", errMessage)

    if (errMessage.length > 0) {
      response = {
        success: false,
        message: errMessage
      }
      // console.log(response);
    } else {
      response = {
        success: true,
        message: "Record added."
      }
    }
    //ctx.response.body = response;
    

    await next();
  };
};
