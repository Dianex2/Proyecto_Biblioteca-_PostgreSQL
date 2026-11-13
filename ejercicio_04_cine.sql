-- Esquema cine
CREATE SCHEMA IF NOT EXISTS cine;

-- Tabla: Generos
CREATE TABLE IF NOT EXISTS cine.generos (
  id_genero INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  nombre_genero VARCHAR(50) NOT NULL UNIQUE
);

-- Tabla: Peliculas
CREATE TABLE IF NOT EXISTS cine.peliculas (
  id_pelicula INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  titulo VARCHAR(150) NOT NULL,
  duracion_min INT NOT NULL CHECK (duracion_min > 0),
  clasificacion VARCHAR(10),
  id_genero INT NOT NULL,
  sinopsis TEXT,
  CONSTRAINT fk_pelicula_genero 
    FOREIGN KEY (id_genero) REFERENCES cine.generos(id_genero)
);

-- Tabla: Salas
CREATE TABLE IF NOT EXISTS cine.salas (
  id_sala INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  numero_sala VARCHAR(10) NOT NULL UNIQUE,
  capacidad_asientos INT NOT NULL CHECK (capacidad_asientos > 0)
);

-- Tabla: Funciones
CREATE TABLE IF NOT EXISTS cine.funciones (
  id_funcion INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  id_pelicula INT NOT NULL,
  id_sala INT NOT NULL,
  fecha_hora TIMESTAMP NOT NULL,
  precio DECIMAL(8,2) NOT NULL CHECK (precio >= 0),
  CONSTRAINT fk_funcion_pelicula 
    FOREIGN KEY (id_pelicula) REFERENCES cine.peliculas(id_pelicula),
  CONSTRAINT fk_funcion_sala 
    FOREIGN KEY (id_sala) REFERENCES cine.salas(id_sala)
);