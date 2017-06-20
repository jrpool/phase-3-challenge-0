# Shell script to test cheapitemsfirst function.

psql -c "select case when (select id from cheapitems() limit 1) = 15 then true else false end as result_cheapitemsfirst" grocery_store grocer
