# Shell script to test cheapitemslast function.

psql -c "select case when (select id from cheapitems() order by price desc limit 1) = 22 then true else false end as result_cheapitemslast" grocery_store grocer
