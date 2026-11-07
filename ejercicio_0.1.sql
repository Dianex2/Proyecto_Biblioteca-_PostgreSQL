create schema biblioteca;

create table tbl_authors(
id_author int generated always  as identity primary key,
name_author varchar(100)not null,
origin varchar(50)
)

create table tbl_books (
id_book INT generated always as identity primary key,
name_book varchar(100) not null,
year int,
copies int not null default 1,
author int not null,
constraint fk_book_author foreign key (author) references tbl_authors(id_author)
);