# Shell script to test itemsinsection function.

psql -c "with cheapbulk as (select name from itemsinsection('bulk')) select case when 'Flour' in (select name from cheapbulk) and 'Pasta' in (select name from cheapbulk) and 'Rice' in (select name from cheapbulk) then true else false end as result_itemsinsection" grocery_store grocer
