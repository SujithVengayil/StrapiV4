module.exports = {
  routes: [
    {
      method: 'GET',
      path: '/get-company-profile-by-id',
      handler: 'custom-api.getCompanyProfileById',
      config: {
        policies: [],
        middlewares: [],
      },
    },
    {
      method: 'GET',
      path: '/custom-api',
      handler: 'custom-api.exampleAction',
      config: {
        policies: [],
        middlewares: [],
      },
    },
    {
      method: 'POST',
      path: '/custom-api1',
      handler: 'custom-api.exampleAction1',
      config: {
        policies: [],
        middlewares: [],
      },
    },
  ],
};
