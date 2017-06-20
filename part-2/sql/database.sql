create role grocer login;
create database grocery_store owner grocer;
comment on role grocer is 'Owner of a grocery store';
comment on database grocery_store is 'Facts about a grocery store';
