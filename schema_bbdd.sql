CREATE SCHEMA IF NOT EXISTS MusicStream;

USE MusicStream;

CREATE TABLE artistas (
id_artista INT AUTO_INCREMENT PRIMARY KEY,
nombre_artista VARCHAR(255)
);

CREATE TABLE años(
id_lustro INT AUTO_INCREMENT PRIMARY KEY,
rango_años VARCHAR(10) 
);

 CREATE TABLE zonas (
 id_zona INT AUTO_INCREMENT PRIMARY KEY,
 nombre_zona VARCHAR(25));
 
CREATE TABLE paises(
id_pais INT AUTO_INCREMENT PRIMARY KEY,
nombre_pais VARCHAR(50), 
id_zona INT,
CONSTRAINT fk_zona
	FOREIGN KEY (id_zona)
    REFERENCES zonas(id_zona) 
);


 
CREATE TABLE canciones(
id_cancion INT AUTO_INCREMENT PRIMARY KEY,
cancion VARCHAR(100),
genero VARCHAR(50),
popularidad INT, 
id_lustro INT,
id_pais INT, 
CONSTRAINT `fk_canciones_año`
              FOREIGN KEY (id_lustro)
              REFERENCES años(id_lustro),
CONSTRAINT `fk_canciones_pais`
              FOREIGN KEY (id_pais)
              REFERENCES paises(id_pais)
);

CREATE TABLE artista_en_cancion(
id_artista INT,
id_cancion INT,
PRIMARY KEY (id_artista, id_cancion),
CONSTRAINT `fk_artista_cancion` 
	FOREIGN KEY (id_artista)
	REFERENCES artistas(id_artista),
CONSTRAINT `fk_cancion_artista` 
	FOREIGN KEY (id_cancion)
	REFERENCES canciones(id_cancion)
);
