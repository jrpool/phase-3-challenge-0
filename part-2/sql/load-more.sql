insert into shoppers(name) values ('Punit'), ('Jared'), ('Juliana');

insert into orders(shopper, day)
  values (1, '2017-12-31'), (1, '2018-03-01'), (2, '1965-01-01'),
  (2, '1998-07-04'), (3, '2000-01-20');

insert into contents("order", item)
  values (1, 35), (1, 36), (2, 36), (3, 18), (4, 18), (4, 20), (5, 26), (5, 4);
