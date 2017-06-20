create function allitems
  (out id integer, out name text, out price numeric, out section text)
  returns setof record language sql stable as
  'select items.id, items.name as item, round(items.price / 100.0, 2) as price, sections.name as section from items join sections on (sections.id = items.section) order by items.id';

create function itemsinsection(sectionname text, out id integer, out name text)
  returns setof record language sql stable as
  'select items.id, items.name from sections join items on (sections.name = sectionname and items.section = sections.id) order by items.id';

create function cheapitems(out id integer, out price numeric)
  returns setof record language sql stable as
  'select id, round(price / 100.0, 2) as price from items where items.price < 1000 order by items.price';

create function countitemsinsection(sectionname text, out count integer)
  returns integer
  language sql stable as
  'select cast(count(items.id) as integer) as itemcount from sections join items on (sections.name = sectionname and items.section = sections.id)';

create function mostrecentorders(out id integer, out day date)
  returns setof record language sql stable as
  'select id, day from orders order by day desc limit 10';

create function lastshoppername(out name text)
  returns text language sql stable as
  'select name from shoppers join (select shopper from orders order by day desc limit 1) as shopperid on (shoppers.id = shopperid.shopper)';

create function ordertotal(num integer, out total numeric) returns numeric
  language sql stable as
  'select round(sum(items.price) / 100.0, 2) as total from contents join items on (contents.order = num and items.id = contents.item)';
