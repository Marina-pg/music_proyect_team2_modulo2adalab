# Proyecto MusicStream by SpotyGirlPower

## 📌 Introducción:

Este proyecto ha sido desarrollado por el equipo conformado por Marianela, Maleni, Marina, Noelia y Adriana como parte del curso de Data Analytics de Adalab, hemos realizado esta DEMO para nuestro cliente Sony.

## 🎯 Objetivos:

Los objetivos de esta DEMO son los siguientes:

1. Analizar las canciones más populares por zonas de Europa en un rango de años, del 2000 al 2024.

2. Analizar y comparar por lustros y por países según la base de datos obtenida.

## 📝  Implementación del proyecto:

✅  Hemos utilizado las APIs de Spotify y LastFM  para obtener los datos de las canciones más escuchadas en EU durante las últimas dos décadas.

✅ En la API de LastFM observamos que los géneros que obteníamos eran de un mismo estilo: rock, frente a la información descargada de Spotify que nos daba una mayor variedad de géneros. 

✅ Finalmente decidimos utilizar la información de la API de Spotify para conocer las canciones más escuchadas y la de lastfm para conocer el género de cada canción, dato que no nos daba Spotify.

✅Dando como resultado una BBDD estructurada de la siguiente manera:

Una tabla Canciones con nombre, popularidad y género.
Tres tablas relacionadas: artista_en_cancion,, lustro_de_cancion y país_en_cancion, que sirven como unión para las tablas artistas, años, países y zonas.

✅Con este esquema pudimos realizar diferentes queries, que nos permitieron analizar los resultados y cumplir con los objetivos trazados.

## 🛠️ Tecnologías Utilizadas:

💻 Lenguajes: Python y MySQL.

🔗 Uso de funciones y bucles para modularidad y reutilización.

📋 Listas, tuplas y diccionarios para filtrar y limpiar los datos obtenidos de las APIs y para la inserción de datos en las tablas en SQL.

## 🗃️ Archivos y carpetas:

### 📁 archivos_csv 

Contiene los archivos `.csv` creados a partir de los datos extraídos de las APIs.

### 📁 img

Contiene la imagen de la estructura de la base de datos MusicStream

### 📁 misc

En esta carpeta se recogen diferentes archivos utilizados durante el desarrollo del proyecto. 

### 📃 archivos principales

- `extraccion_datos.ipynb`: Utilizado para extraer los datos de las API's de Spotify y LastFM.
- `schema_bbdd.sql`: Script de SQL para crear la base de datos MusicStream. 
- `insercion_datos_bbdd.ipynb`: Utilizado para insertar los datos extraidos a la base de datos.
- `queries.sql`: Script de SQL con queries a la basa de datos creada. 

## 🚀 Retos y Aprendizajes
El desarrollo del proyecto nos ha permitido enfrentar y superar los siguientes retos:

📌 Planteamiento de la estructura de la base de datos, más tiempo de lo esperado.

⚠️ Limpiar correctamente los géneros, ya que hemos utilizado las TAGS de la API de LastFM y algunas no se explicaban con claridad. 


## 🔮 Next Steps
Planeamos seguir mejorando el proyecto con las siguientes funcionalidades:

🖥️ Añadir una biografía de los artistas a la base de datos, desde la API de LastFM.

🗄️ Incluir más canciones en la base de datos, enfocándonos en extraer más de 50 canciones en la llamada a la API.

🌐 Gestionar de otra manera las canciones con más de un artista. Actualmente si una canción tiene varios artistas, se añade como un artista.

## 🏁 Conclusión

Este proyecto representa un aprendizaje significativo en el desarrollo de extracción y limpieza de datos, llamadas a APIs, creación y análisis de bases de datos, tablas y queries en Python y SQL, enfocándonos en la modularidad y experiencia de usuario. Estamos entusiasmadas por las mejoras futuras y agradecemos cualquier feedback.

## 📩 Contacto
Si tienes preguntas o sugerencias, no dudes en contactarnos.

✨ ¡Gracias por tu interés en nuestro proyecto y seguimos avanzando! 🎉
