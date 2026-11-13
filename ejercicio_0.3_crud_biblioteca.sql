-- CRUD - Esquema biblioteca
-- INSERTAR 

INSERT INTO biblioteca.tbl_authors (name_author, origin)
VALUES ('Gabriel García Márquez', 'Colombia');
INSERT INTO biblioteca.tbl_authors (name_author, origin)
VALUES ('Isabel Allende', 'Chile');
INSERT INTO biblioteca.tbl_authors (name_author, origin)
VALUES ('Mario Vargas Llosa', 'Perú');

INSERT INTO biblioteca.tbl_books (name_book, year, copies, author)
VALUES ('Cien años de soledad', 1967, 3, 1);
INSERT INTO biblioteca.tbl_books (name_book, year, copies, author)
VALUES ('La casa de los espíritus', 1982, 2, 2);
INSERT INTO biblioteca.tbl_books (name_book, year, copies, author)
VALUES ('La ciudad y los perros', 1963, 1, 3);

--CONSULTAR 
SELECT * FROM biblioteca.tbl_authors;
SELECT * FROM biblioteca.tbl_books;

SELECT 
  b.name_book AS libro,
  a.name_author AS autor,
  b.year AS anio_publicacion,
  b.copies AS ejemplares
FROM biblioteca.tbl_books b
INNER JOIN biblioteca.tbl_authors a 
  ON b.author = a.id_author;

--ACTUALIZAR 
UPDATE biblioteca.tbl_books
SET copies = 5
WHERE name_book = 'Cien años de soledad';

UPDATE biblioteca.tbl_authors
SET name_author = 'Gabriel José García Márquez'
WHERE id_author = 1;

-- ELIMINAR
DELETE FROM biblioteca.tbl_books
WHERE name_book = 'La ciudad y los perros';

DELETE FROM biblioteca.tbl_authors
WHERE name_author = 'Mario Vargas Llosa';