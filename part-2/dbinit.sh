# Shell script to create, configure, and initially load the grocery_store
# database and create role grocer as its owner.

# Create the grocery_store database.
psql -f part-2/sql/database.sql postgres

# Connect to it as its owner and create its schema.
psql -f part-2/sql/schema.sql grocery_store grocer

# Connect to it as its owner and create its functions.
psql -f part-2/sql/functions.sql grocery_store grocer

# Copy the file of initial data to /tmp so PostgreSQL can find it.
cp part-2/data/grocery.csv /tmp

# Connect to the database as a superuser and copy the initial data into it,
# because only superusers can copy from files.
psql -f part-2/sql/load-data.sql grocery_store

# Delete the extra copy of the file of initial data.
rm -f /tmp/grocery.csv

# Connect to it as its owner and add more data to it.
psql -f part-2/sql/load-more.sql grocery_store grocer
