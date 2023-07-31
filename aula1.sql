create database library;

create table book (
  id serial primary key,
  title text not null,
  author text not null,
  publication_year integer not null,
  price decimal(6,2) not null
);

select * from book;

insert into book (title, author, publication_year, price) values ('1984', 'George Orwell', 1949, 10.99);

select * from book;

update book
   set price = 12.99
 where id = 1;

select * from book;

delete from book
 where publication_year < 2000

select * from book;

select title, author from book;