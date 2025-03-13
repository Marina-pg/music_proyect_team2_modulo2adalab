CREATE SCHEMA IF NOT EXISTS MusicStream;

USE MusicStream;

CREATE TABLE artistas (
id_artista INT AUTO_INCREMENT PRIMARY KEY,
nombre_artista VARCHAR(255) UNIQUE
);

CREATE TABLE años(
id_lustro INT AUTO_INCREMENT PRIMARY KEY,
rango_años VARCHAR(10) 
);

 CREATE TABLE zonas (
 id_zona INT AUTO_INCREMENT PRIMARY KEY,
 nombre_zona VARCHAR(25));
 
CREATE TABLE paises(
id_pais VARCHAR(3) PRIMARY KEY,
nombre_pais VARCHAR(50), 
id_zona INT,
CONSTRAINT fk_zona
	FOREIGN KEY (id_zona)
    REFERENCES zonas(id_zona) 
	ON DELETE CASCADE
	ON UPDATE CASCADE
);


CREATE TABLE canciones(
id_cancion INT AUTO_INCREMENT PRIMARY KEY,
cancion VARCHAR(250),
genero VARCHAR(50),
popularidad INT, 
);

CREATE TABLE artista_en_cancion(
id_artista INT,
id_cancion INT,
PRIMARY KEY (id_artista, id_cancion),
CONSTRAINT `fk_artista_cancion` 
	FOREIGN KEY (id_artista)
	REFERENCES artistas(id_artista)
			  ON DELETE CASCADE
			  ON UPDATE CASCADE,
CONSTRAINT `fk_cancion_artista` 
	FOREIGN KEY (id_cancion)
	REFERENCES canciones(id_cancion)
			  ON DELETE CASCADE
			  ON UPDATE CASCADE
);

CREATE TABLE pais_en_cancion(
id_pais VARCHAR(3),
id_cancion INT,
PRIMARY KEY (id_pais, id_cancion),
CONSTRAINT `fk_pais_cancion` 
	FOREIGN KEY (id_pais)
	REFERENCES paises(id_pais)
			  ON DELETE CASCADE
			  ON UPDATE CASCADE,
CONSTRAINT `fk_cancion_pais` 
	FOREIGN KEY (id_cancion)
	REFERENCES canciones(id_cancion)
			  ON DELETE CASCADE
			  ON UPDATE CASCADE
);

CREATE TABLE lustro_de_cancion(
id_lustro INT,
id_cancion INT,
PRIMARY KEY (id_lustro, id_cancion),
CONSTRAINT `fk_lustro_cancion` 
	FOREIGN KEY (id_lustro)
	REFERENCES años(id_lustro)
			  ON DELETE CASCADE
			  ON UPDATE CASCADE,
CONSTRAINT `fk_cancion_lustro` 
	FOREIGN KEY (id_cancion)
	REFERENCES canciones(id_cancion)
			  ON DELETE CASCADE
			  ON UPDATE CASCADE
);