-- Análisis y consultas de datos solicitados por el cliente: SONY de los países mediterraneos en el rango de años del 2000 al 2024

-- 1. ¿Cuál es el artista con más albums?
-- Asumiendo que cada canción representa un "álbum" o trabajo del artista:
SELECT artista, COUNT(artista) AS total_albumes
FROM canciones
GROUP BY artista
ORDER BY total_albumes DESC
LIMIT 5;


-- 2. ¿Qué género es el mejor valorado?
SELECT genero, AVG(popularity) AS avg_valoracion
FROM canciones
GROUP BY genero
ORDER BY avg_valoracion DESC
LIMIT 10;

-- 3. Lustro de años con más álbumes lanzados (asumiendo que cada canción representa un "álbum" o trabajo del artista) 
SELECT rango_lustros, COUNT(nombre_cancion) AS total_albums
FROM canciones
GROUP BY rango_lustros
ORDER BY total_albums DESC
LIMIT 5;


-- 4. Canción mejor valorada
SELECT nombre_cancion, popularity
FROM canciones
ORDER BY popularity DESC
LIMIT 1;

-- 5. Artista con más valoración (promedio de popularidad de sus canciones)
SELECT artista, AVG(popularity) AS avg_valoracion
FROM canciones
GROUP BY artista
ORDER BY avg_valoracion DESC
LIMIT 1;

-- 6. Álbum más valorado de los años pares
SELECT nombre_cancion, popularity, año_lanzamiento
FROM canciones
WHERE MOD(año_lanzamiento, 2) = 0
ORDER BY popularity DESC
LIMIT 1;

-- 7. País con más artistas, ordenado por popularidad
SELECT id_pais, COUNT(DISTINCT artista) AS total_artistas
FROM canciones
GROUP BY id_pais
ORDER BY total_artistas DESC, SUM(popularity) DESC;

-- 8. Artista con más tiempo en la industria y su número de álbumes (asumiendo que hay una columna "año_inicio")
SELECT artista, MIN(año_lanzamiento) AS año_inicio, COUNT(*) AS total_albums
FROM canciones
GROUP BY artista
ORDER BY año_inicio ASC, total_albums DESC
LIMIT 1;


