// Load pg-promise module.
const pgp = require('pg-promise')();

// Use it to connect to and identify the grocery-store database.
const cn = 'postgres://grocer@localhost:5432/grocery_store';
const db = pgp(cn);

// Function to return all items.
const allItems = () => {
  db.many(
    'select items.id, items.name, items.price / 100, sections.name '
    || 'from items join sections on (sections.id = items.section) '
    || 'order by items.id',
    []
  ).then((data) => {return data;}).catch((error) => {return error;});
};

// End the database connection
pgp.end();

// Export the functions.
module.exports.allItems = allItems;
