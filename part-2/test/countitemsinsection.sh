# Shell script to test countitemsinsection function.

psql -c "select case when (select * from countitemsinsection('packaged')) = 5 then true else false end as result_countitemsinsection" grocery_store grocer
