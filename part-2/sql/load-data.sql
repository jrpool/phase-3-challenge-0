create temporary table import (name text, price text, section text);

copy import from '/tmp/grocery.csv' (format csv, header);

insert into sections(name) select distinct section from import;

insert into items(name, price, section) select
  import.name, 100 * cast(import.price as numeric), sections.id
  from import join sections on (sections.name = import.section);

drop table import;
