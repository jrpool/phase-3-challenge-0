# Phase 3 Interview Challenge

This is the challenge for getting into phase 3. There are 3 parts to the challenge.

To get started, create a new repository called `phase-3-challenge`. Do all of your work in this repo and submit it as your solution.

Skills covered:

- Programming
- Programming in JS
- Node.js
- HTTP
- HTTP Applications
- HTML & CSS
- The Browser
- SQL

Each requirement has a point value. A fully complete requirement gets full points; partially complete requirements get partial points; incomplete requirements get no points. Completeness is determined by calculating points earned divided by total points available.

## General Requirements

- [x] __10:__ Solution is in a public repository called `phase-3-challenge`
- [x] __10:__ Solution repository has 3 folders: `part-1`, `part-2`, and `part-3`.
- [x] __20:__ Git history shows frequent commits.

## Part 1: Simple web app

Build a very basic web app to perform basic calculations on numbers supplied in the URL.

Use Express. You don't need to use an HTML templater like EJS or Pug, just respond with plain text.

The web server should provide the following routes:

```
/zero
/add
/subtract
/double/:number
```

All routes just respond with a plain text response. The `/add` and `/subtract` routes all take a query string with two numbers `a` and `b`.

Example requests and responses:

```
request: GET /zero
response: 0

request: GET /add?a=4&b=8
response: 12

request: GET /subtract?a=9&b=2
response: 7

request: GET /double/9
response: 18
```

### Requirements

- [x] __10:__ All files are stored under the `part-1/` folder
- [x] __10:__ All dependencies are specified in a `package.json` file
- [x] __10:__ Web server can be started with `npm start` command
- [x] __20:__ GET requests to the `/zero` route respond with plain text `0`
- [x] __20:__ GET requests to the `/add` route add the two numbers provided in the query string variables `a` and `b` and respond with the result
- [x] __20:__ GET requests to the `/subtract` route subtract the value of the query string variable `b` from the query string variable `a` and respond with the result
- [x] __20:__ GET requests to the `/double/:number` route doubles the number provided in the URL (in place of `:number`) and responds with the result

## Part 2: Database for grocery store & tests

Build a small PostgreSQL database for a grocery store, then connect and write queries using Node.js. Same idea as in part 3, but focused on the database side.

Design a database to store **grocery items**, **shoppers**, and shoppers' **orders**. Let's call the database `grocery_store` (so clever, I know).

You'll need to design the schema and write some SQL statements to insert data. Look closely at the requirements to determine how to design your schema.

Use the provided [grocery item data][grocery-data] to seed your grocery items table, and write some custom insert statements to add 3-5 rows to the shoppers and orders tables and any join tables you may need to connect them all.

Then, use [pg-promise](https://www.npmjs.com/package/pg-promise) and [Mocha](https://mochajs.org/) + [Chai](http://chaijs.com/) to write and test database queries.

### Requirements

- [ ] __10:__ All files are stored under the `part-2/` folder
- [ ] __10:__ Database schema (all `CREATE TABLE` statements) is defined in a file `schema.sql`
- [ ] __10:__ SQL script to insert [grocery seed data][grocery-data] and load from CSV is created in a file `load-data.sql`
- [ ] __10:__ All database query functions are written in a file `database.js`, and tests for queries are written in a file `database_test.js`

Implement these functions in `database.js` using [pg-promise](https://www.npmjs.com/package/pg-promise) to make the following queries:

- [ ] __20:__ `allItems()` : Find the IDs, names, prices, and sections for all grocery **items**
- [ ] __20:__ `itemsInSection(<section>)` : Find the IDs and names of all grocery **items** in the given section
- [ ] __20:__ `cheapItems()` : Find the IDs and prices of all grocery **items** that cost less than $10.00, ordered from lowest to highest price
- [ ] __20:__ `countItemsInSection(<section>)` : Get the count of all grocery **items** in the given section
- [ ] __20:__ `mostRecentOrders()` : Find the IDs and order dates for the 10 most recent **orders**
- [ ] __20:__ `lastShopperName()` : Find the shopper's name who made the most recent **order**
- [ ] __20:__ `orderTotal(<ID>)` : Find the sum of all prices for items for a specific **order**

Write tests with [Mocha](https://mochajs.org/) + [Chai](http://chaijs.com/) in `database_test.js` that assert:

- [ ] __20:__ A call to `itemsInSection("bulk")` returns the items `"Flour"`, `"Pasta"`, and `"Rice"`
- [ ] __20:__ A call to `cheapItems()` returns the item `"Fish"` as the first item and `"Honey"` as the last item
- [ ] __20:__ A call to `countItemsInSection("packaged")` returns `5`

## Part 3: Web interface for grocery store

Create a front-end only site for an online grocery store where users can choose from a list of items and add them to a cart.

You only need to write HTML, CSS, and JavaScript. No web server is required.

The initial layout has already been provided for you in the [grocer.html][grocer-html] and [grocer.css][grocer-css] files. From this base, build the modal and add interactive behavior with JS.

### Wireframe

Clicking on the "Cart" button opens the cart modal.

![modal](https://user-images.githubusercontent.com/709100/26839839-3b224ad6-4ab2-11e7-8bb4-24e715ca53bd.png)

### Requirements

- [ ] __10:__ All files are stored under the `part-3/` folder
- [ ] __20:__ No third party CSS or JS libraries are used (all code must be written from scratch)
- [ ] __10:__ HTML, CSS, and JS are separated into their own files.
- [ ] __20:__ Clicking on "Add to cart" will update the number displayed next to the "Cart" button to show the total number of items in the user's cart
- [ ] __20:__ Clicking on the "Cart" button will show the cart modal with a list of all items added
- [ ] __20:__ Clicking on the "Clear" button in the cart modal removes all items from the cart
- [ ] __20:__ Clicking on the "X" button in the cart modal closes the modal
- [ ] __20:__ The "Total" in the cart modal shows the calculated sum of all item prices

[grocery-data]: https://gist.github.com/lg-bot/1be9e9b91fc0f972b74b72df34c99d3d#file-grocery-csv
[grocer-html]: https://gist.github.com/lg-bot/1be9e9b91fc0f972b74b72df34c99d3d#file-grocer-html
[grocer-css]: https://gist.github.com/lg-bot/1be9e9b91fc0f972b74b72df34c99d3d#file-grocer-css
