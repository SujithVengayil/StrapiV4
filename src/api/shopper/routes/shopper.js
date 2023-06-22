'use strict';

/**
 * shopper router
 */


const { createCoreRouter } = require('@strapi/strapi').factories;

module.exports = createCoreRouter('api::shopper.shopper', {
    prefix: '',
    only: ['find', 'findOne', 'create', 'update', 'delete'],
    except: [],
    config: {
        find: {
            auth: false,
            policies: [],
            middlewares: [],
        },
        findOne: {},
        create:{},
        // create: {
        //     auth: false,
        //     policies: [],
        //     middlewares: [
        //         // point to a registered middleware
        //         'api::shopper.add-edit-shopper',

        //         // point to a registered middleware with some custom configuration
        //         // { name: 'api::banner.bannertesting', config: {} }, 

        //         // pass a middleware implementation directly
        //         (ctx, next) => {
        //             return next();
        //         },
        //     ],
        // },
        update: {},
        delete: {},
    },
});