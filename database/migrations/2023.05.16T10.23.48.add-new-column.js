'use strict';

/**
 * Migration `add-new-column`
 */

module.exports = {
  /**
   *
   * @param {import('knex').Knex} knex
   */
  async up(knex) {
    await knex.schema.hasTable('a1_tests').then( async function (exists) {
      console.log("first")
      if (exists) {
        console.log("table exists ", exists)
        try {
          const result = await knex.schema.alterTable('a1_tests', function (table) {
            table.string('first_name');
            table.string('last_name');
          })
          console.log("result ",result)
        } catch (error) {
          console.log("ERR",error)
        }
      } else {
        console.log("table not exist");
        return false;
      }
    });
    console.log("END")
  },
};
