create database library;

create table book (
  id serial primary key,
  title text not null,
  author text not null,
  publication_year integer not null,
  price decimal(6,2) not null
);

select * from livro;

insert into livro (title, author, publication_year, price) values ('1984', 'George Orwell', 1949, 10.99);

select * from livro;

update livro
   set price = 12.99
 where id = 1;

select * from livro;

delete from livro
 where publication_year < 2000

select * from livro;

select title, author from livro;