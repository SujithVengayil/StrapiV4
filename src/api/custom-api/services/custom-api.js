'use strict';

/**
 * custom-api service
 */

module.exports = () => ({
    getCompanyProfileData: async (obj) => {
        try {
            console.log(obj.countryId)
            // fetching data
            const entries = await strapi.entityService.findMany(
                "api::company-profile.company-profile",
                {filters: {
                    country: {
                      $eq: 83,
                    },
                  }}
            );

            // reduce the data to the format we want to return
            console.log("entries",entries)
            let entriesReduced;
            if (entries && Array.isArray(entries)) {
                entriesReduced = entries.reduce((acc, item) => {
                    acc = acc || [];
                    acc.push({
                        id: item.id,
                        title: item.name || ""
                    });
                    return acc;
                }, []);
            }

            // return the reduced data
            return entriesReduced;
        } catch (err) {
            return err;
        }
    },

    postsReport: async (query) => {
        try {
            // fetching data
            const entries = await strapi.entityService.findMany(
                "api::country-code.country-code",
                {filters: {
                    name: {
                      $eq: 'India',
                    },
                  }}
            );

            // reduce the data to the format we want to return
            // console.log("entries",entries)
            let entriesReduced;
            if (entries && Array.isArray(entries)) {
                entriesReduced = entries.reduce((acc, item) => {
                    acc = acc || [];
                    acc.push({
                        id: item.id,
                        title: item.name || ""
                    });
                    return acc;
                }, []);
            }

            // return the reduced data
            return entriesReduced;
        } catch (err) {
            return err;
        }
    },
});
