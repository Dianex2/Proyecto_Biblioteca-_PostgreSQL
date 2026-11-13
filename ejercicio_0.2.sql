-- DML - Lenguaje de manipulacion de datos 

-- CONSULTA 
select tb.id_book, tb.name_book from biblioteca.tbl_books tb;

select * from biblioteca.tbl_authors ta;

select 
tb.name_book as NOMBRE_LIBRO,
ta.name_author as NOMBRE_AUTOR,
tb."year" as PUBLICACION_EN

from biblioteca.tbl_books tb
inner join biblioteca.tbl_authors ta 
on tb.author  = tb.author ;

select * from biblioteca.tbl_authors ya;

-- INCERTAR
insert into biblioteca.tbl_authors(name_author, origin)
values ('steohen king', 'USA');
insert into biblioteca.tbl_authors(name_author, origin)
values ('J. k. Rolling', 'uk');
insert into biblioteca.tbl_authors(name_author, origin)
values ('eichir oda', 'japon');

insert into biblioteca.tbl_books(name_book, year, author)
values('it', 1987,1);
insert into biblioteca.tbl_books(name_book, year, author)
values('one pice', 1997, 2);
insert into biblioteca.tbl_books(name_book, year, author)
values('harry potter:la piedraa filosol', 200,2);
insert into biblioteca.tbl_books(name_book, year, author)
values ('harry el sucio potter', 200, 2);

select count(tbl_books) as cantidad_libros from biblioteca.tbl_books;

-- ACTUALIZAR
update biblioteca.tbl_books 
set author = 3
where id_book = 4

update biblioteca.tbl_books 
set name_book = 'hp: la camara decreta'
where id_book = 3;

-- ELIMINAR 
delete from biblioteca.tbl_books were id_book =5;
