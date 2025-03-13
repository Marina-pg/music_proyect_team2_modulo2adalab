-- COMPARAR POR PAISES MISMA ZONA
-- MEDITERRANEO
-- ES
SELECT DISTINCT *
FROM CANCIONES
WHERE id_cancion IN (SELECT id_cancion
					FROM pais_en_cancion
                    WHERE id_pais = 'ES')
ORDER BY popularidad DESC
LIMIT 10;
-- FR
SELECT DISTINCT *
FROM CANCIONES
WHERE id_cancion IN (SELECT id_cancion
					FROM pais_en_cancion
                    WHERE id_pais = 'FR')
ORDER BY popularidad DESC
LIMIT 10;
-- IT
SELECT DISTINCT *
FROM CANCIONES
WHERE id_cancion IN (SELECT id_cancion
					FROM pais_en_cancion
                    WHERE id_pais = 'IT')
ORDER BY popularidad DESC
LIMIT 10;
-- GR
SELECT DISTINCT *
FROM CANCIONES
WHERE id_cancion IN (SELECT id_cancion
					FROM pais_en_cancion
                    WHERE id_pais = 'GR')
ORDER BY popularidad DESC
LIMIT 10;

-- NORTE
-- DK
SELECT DISTINCT *
FROM CANCIONES
WHERE id_cancion IN (SELECT id_cancion
					FROM pais_en_cancion
                    WHERE id_pais = 'DK')
ORDER BY popularidad DESC
LIMIT 10;
-- LV
SELECT DISTINCT *
FROM CANCIONES
WHERE id_cancion IN (SELECT id_cancion
					FROM pais_en_cancion
                    WHERE id_pais = 'LV')
ORDER BY popularidad DESC
LIMIT 10;
-- IS
SELECT DISTINCT *
FROM CANCIONES
WHERE id_cancion IN (SELECT id_cancion
					FROM pais_en_cancion
                    WHERE id_pais = 'IS')
ORDER BY popularidad DESC
LIMIT 10;
-- GB
SELECT DISTINCT *
FROM CANCIONES
WHERE id_cancion IN (SELECT id_cancion
					FROM pais_en_cancion
                    WHERE id_pais = 'GB')
ORDER BY popularidad DESC
LIMIT 10;

-- CENTRO
-- AT
SELECT DISTINCT *
FROM CANCIONES
WHERE id_cancion IN (SELECT id_cancion
					FROM pais_en_cancion
                    WHERE id_pais = 'AT')
ORDER BY popularidad DESC
LIMIT 10;
-- DE
SELECT DISTINCT *
FROM CANCIONES
WHERE id_cancion IN (SELECT id_cancion
					FROM pais_en_cancion
                    WHERE id_pais = 'DE')
ORDER BY popularidad DESC
LIMIT 10;
-- BE
SELECT DISTINCT *
FROM CANCIONES
WHERE id_cancion IN (SELECT id_cancion
					FROM pais_en_cancion
                    WHERE id_pais = 'BE')
ORDER BY popularidad DESC
LIMIT 10;
-- NL
SELECT DISTINCT *
FROM CANCIONES
WHERE id_cancion IN (SELECT id_cancion
					FROM pais_en_cancion
                    WHERE id_pais = 'NL')
ORDER BY popularidad DESC
LIMIT 10;

-- ESTE
-- BY
SELECT DISTINCT *
FROM CANCIONES
WHERE id_cancion IN (SELECT id_cancion
					FROM pais_en_cancion
                    WHERE id_pais = 'BY')
ORDER BY popularidad DESC
LIMIT 10;
-- BG
SELECT DISTINCT *
FROM CANCIONES
WHERE id_cancion IN (SELECT id_cancion
					FROM pais_en_cancion
                    WHERE id_pais = 'BG')
ORDER BY popularidad DESC
LIMIT 10;
-- HU
SELECT DISTINCT *
FROM CANCIONES
WHERE id_cancion IN (SELECT id_cancion
					FROM pais_en_cancion
                    WHERE id_pais = 'HU')
ORDER BY popularidad DESC
LIMIT 10;
-- PL
SELECT DISTINCT *
FROM CANCIONES
WHERE id_cancion IN (SELECT id_cancion
					FROM pais_en_cancion
                    WHERE id_pais = 'PL')
ORDER BY popularidad DESC
LIMIT 10;

-- COMPARACION POR ZONAS
-- MEDITERRANEO
SELECT DISTINCT genero, popularidad
FROM CANCIONES
WHERE genero NOT IN ('None') AND id_cancion IN (SELECT id_cancion
					FROM pais_en_cancion
                    WHERE id_pais IN ('ES', 'FR', 'MC', 'IT', 'SI', 'HR', 'BA', 'ME', 'AL', 'GR', 'MT', 'CY'))
ORDER BY popularidad DESC
limit 5;

-- CENTRO
SELECT DISTINCT genero, popularidad
FROM CANCIONES
WHERE genero NOT IN ('None') AND id_cancion IN (SELECT id_cancion
					FROM pais_en_cancion
                    WHERE id_pais IN ('AT', 'DE', 'CH', 'LI', 'BE', 'LU', 'NL'))
ORDER BY popularidad DESC
limit 5;

-- NORTE
SELECT DISTINCT genero, popularidad
FROM CANCIONES
WHERE genero NOT IN ('None') AND id_cancion IN (SELECT id_cancion
					FROM pais_en_cancion
                    WHERE id_pais IN ('DK', 'EE', 'FI', 'IS', 'IE', 'LT', 'LV', 'NO', 'SE', 'GB'))
ORDER BY popularidad DESC
limit 5;

-- ESTE
SELECT DISTINCT genero, popularidad
FROM CANCIONES
WHERE genero NOT IN ('None') AND id_cancion IN (SELECT id_cancion
					FROM pais_en_cancion
                    WHERE id_pais IN ('BY', 'BG', 'CZ', 'SK', 'HU', 'MD', 'PL', 'RO', 'UA'))
ORDER BY popularidad DESC
limit 5;

