create table sections (
  id serial primary key,
  name text not null unique
);

create table items (
  id serial primary key,
  name text not null,
  price integer not null,
  section integer not null
    references sections on delete set null on update cascade
);

create table shoppers (
  id serial primary key,
  name text not null
);

create table orders (
  id serial primary key,
  day date,
  shopper integer not null
    references shoppers on delete cascade on update cascade
);

create table contents (
  "order" integer not null
    references orders on delete cascade on update cascade,
  item integer not null
    references items on delete set null on update cascade
);

comment on table sections is 'Merchandise sections of grocery store';

comment on table items is 'Types of merchandise stocked by grocery store';
comment on column items.price is 'Unit price in cents';
comment on column items.section is 'Merchandise section where stocked';

comment on table shoppers is 'Shoppers in store';

comment on table orders is 'Orders received from shoppers';

comment on table contents is 'Items contained in orders';
