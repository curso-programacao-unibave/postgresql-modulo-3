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

select * from livro;

insert into livro (title, author, publication_year, price, isbn) values ('1984', 'George Orwell', 1949, 10.99, '9788535914849');
insert into livro (title, author, publication_year, isbn) values ('2001', 'George Orwell', 2001, '6788535914849');
insert into livro (title, author, publication_year, price, isbn) values ('2012', 'George Orwell', 2012, 10.99, '5788535914849');
insert into livro (title, author, publication_year, price, isbn) values ('2020', 'George Orwell', 2020, 10.99, '4788535914849');
insert into livro (title, author, publication_year, price, isbn) values ('Clean Code V2', 'Uncle Bob', 2012, 10.99, '3788535914849');

select * from livro;

update livro
   set price = 12.99
 where id = 1;

update livro
  set price = 19.99
where id = 2;

select * from livro;

delete from livro
 where publication_year < 2000

delete from livro
 where publication_year = 2020

delete from livro
 where author = 'Uncle Bob'

select * from livro;

select title as "Título do Livro",
       author as "Autor do livro"
  from livro
 where active = true;