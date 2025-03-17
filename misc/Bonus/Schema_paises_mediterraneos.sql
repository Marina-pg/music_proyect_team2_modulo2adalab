CREATE SCHEMA IF NOT EXISTS MusicStreamMediterraneos;

USE MusicStreamMediterraneos;

-- Crear la tabla canciones
CREATE TABLE canciones (
  id_cancion INT AUTO_INCREMENT PRIMARY KEY,
  nombre_cancion VARCHAR(255),
  popularity INT,
  artista VARCHAR(255),
  id_pais VARCHAR(3),
  genero VARCHAR(255),
  rango_lustros VARCHAR (20)
);

CREATE TABLE paises_mediterraneos (
	id_pais VARCHAR (3) PRIMARY KEY);
    
ALTER TABLE paises_mediterraneos ADD nombre_pais VARCHAR (100);

INSERT INTO paises_mediterraneos (id_pais, nombre_pais) 
	VALUES (
    "ES", "España");
    
INSERT INTO paises_mediterraneos (id_pais, nombre_pais) 
	VALUES ("FR", "Francia");
   
INSERT INTO paises_mediterraneos (id_pais, nombre_pais)
VALUES
    ("MC", "Mónaco"),
    ("IT", "Italia"),
    ("SI", "Eslovenia"),
    ("HR", "Croacia"),
    ("BA", "Bosnia y Herzegovina"),
    ("ME", "Montenegro"),
    ("AL", "Albania"),
    ("GR", "Grecia"),
    ("MT", "Malta"),
    ("CY", "Chipre")
ON DUPLICATE KEY UPDATE nombre_pais = VALUES(nombre_pais);

-- Análisis y consultas de datos solicitados por el cliente: SONY de los países mediterraneos

/* ¿Cuál es el artista con más albums?*/
-- Asumiendo que cada canción representa un "álbum" o trabajo del artista:
SELECT artista, COUNT(artista) AS total_albumes
FROM canciones
GROUP BY artista
ORDER BY total_albumes DESC
LIMIT 5;

-- ¿Qué género es el mejor valorado?



