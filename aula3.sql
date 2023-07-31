create database library;

create table book (
  id serial primary key,
  title text not null,
  isbn varchar(13) unique not null,
  author text not null,
  publication_year integer not null,
  price decimal(6,2) not null default 0,
  active boolean not null default true
);

select * from book;

insert into book (title, author, publication_year, price, isbn) values ('1984', 'George Orwell', 1949, 10.99, '9788535914849');
insert into book (title, author, publication_year, isbn) values ('2001', 'George Orwell', 2001, '6788535914849');
insert into book (title, author, publication_year, price, isbn) values ('2012', 'George Orwell', 2012, 10.99, '5788535914849');
insert into book (title, author, publication_year, price, isbn) values ('2020', 'George Orwell', 2020, 10.99, '4788535914849');
insert into book (title, author, publication_year, price, isbn) values ('Clean Code V2', 'Uncle Bob', 2012, 10.99, '3788535914849');

select *
  from book
 where author = 'George Orwell';

select *
  from book
 where author like '%_ob';

select *
  from book
 where author like '%Bob%';

select *
  from book
 where author <> 'George Orwell';

select *
  from book
 where publication_year > 2012;

select *
  from book
 where publication_year between 2000 and 2012;

select *
  from book
 where publication_year <> 2012;

select *
  from book
 where publication_year in (1949, 2001);

select *
  from book
 where (publication_year = 1949 or publication_year = 2012)
   and author like '%Bob%';

select count(*) from book;