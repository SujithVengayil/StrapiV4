'use strict'
//-- Follow documents // https://knexjs.org/guide/schema-builder.html#createtable
  
async function up1(knex) {
  try {
    // const result = await knex.schema.withSchema('public').createTable('abctests', function (table) {
    //   table.increments();
    // })
    
  //   const result = knex.schema.createTable('abctests', function (table) {
  //     table.increments();
  //     table.string('name');
  //     table.timestamps();
  // })
  //   console.log("totalEvents ",result)
  //   return result
  }
  catch (error) {
    console.log("Err ",error);
  }
  //-- Create Table
  // await knex.schema.createTable('abctests', function (table) {
  //   table.increments();
  //   table.string('name');
  //   table.timestamps();
  // })
  // console.log("Table Created") //- NOT WORKING

  //-- Copy Table without field
  // await knex.schema.createTableLike('account_news', 'accounts')  //- NOT WORKING

  //-- Copy Table with field
  // "new_users" table contains columns ,// of users and two new columns 'age' and 'last_name'.
  // await knex.schema.createTableLike('account_news', 'accounts', (table) => {
  //   table.integer('age');
  //   table.string('last_name');
  // })
  // console.log("Table Copy Created") //- NOT WORKING

  //-- Rename Table
  // await knex.schema.renameTable('account_news', 'accounts')
  // console.log("Table Renamed") //- WORKING

  //-- Check Table exist
  // await knex.schema.hasTable('accounts').then(function(exists) {
  //   console.log("Table Exist")
  //   if (exists) {
  //     return knex.schema.createTable('account11s', function(t) {
  //       t.increments('id').primary();
  //       t.string('first_name', 100);
  //       t.string('last_name', 100);
  //       t.text('bio');
  //     });
  //   }
  // });
  // console.log("Table Exist and created") //- NOT WORKING

  //-- Alter table
  // await knex.schema.alterTable('chains', function (table) {
  //   // table.dropColumn('name');
  //   table.string('first_name');
  //   table.string('last_name');
  // })
  // console.log("Alter Table Working") //- NOT WORKING
  
  //  await knex.schema.table('chains', table => {
  //    table.renameColumn('name', 'new_name');
  //  });
}

module.exports.up = function(knex){ 
  // return knex.schema.createTable('abctests', function (table) {
  //   table.increments();
  //   table.string('name');
  //   table.timestamps();
  // })
};



// module.exports = {
//     async up(knex) {
//       // You have full access to the Knex.js API with an already initialized connection to the database
  
//       // Example: renaming a table
//       //await knex.schema.renameTable('oldName', 'newName');
  
//       // Example: renaming a column
//       // await knex.schema.table('coupons', table => {
//       //   table.renameColumn('end_date', 'nilesh');
//       // });
  
//       // Example: updating data
//       await knex.from('chains').update({ name: 'nilesh' }).where({ name: 'nile' });
//     },
//   };