/*################################################################################################
		     		      Jueves 20 de Mayo de 2021
				           Lizzeth Gómez Rodríguez
 		        	           RETOS SESION 4
##################################################################################################*/

USE proyecto_BEDU;

CREATE TABLE IF NOT EXISTS users (
   id INT PRIMARY KEY, 
   genero VARCHAR(1), 
   edad INT,
   ocup INT,
   cp VARCHAR(20)
);
SELECT* FROM users LIMIT 10;

# RETO 1
/*Definir los campos y tipos de datos para la tabla movies haciendo uso de los archivos movies.dat y README.
1. Crear la tabla movies (recuerda usar el mismo nombre del archivo sin la extensión para vincular nombres de tablas con archivos).
Definir los campos y tipos de datos para la tabla ratings haciendo uso de los archivos ratings.dat y README.
2. Crear la tabla ratings (recuerda usar el mismo nombre del archivo sin la extensión para vincular nombres de tablas con archivos)*/

-- Ejercicio 1
CREATE TABLE IF NOT EXISTS movies (
	id INT PRIMARY KEY,
    title VARCHAR(80),
	genre VARCHAR(80)
);

DESCRIBE movies;

-- Ejercicio 2
CREATE TABLE IF NOT EXISTS ratings (
	user_id INT,
    movie_id INT,
    rating INT,
    time_stamp BIGINT,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (movie_id) REFERENCES movies(id)
    );
 
DESCRIBE ratings;
    

# RETO 2
/*
1. Usando como base el archivo movies.dat, limpiarlo e importar los datos en la tabla movies creada en el Reto 1.
2. Usando como base el archivo ratings.dat, limpiarlo e importar los datos en la tabla ratings creada en el Reto 2.
3. Finalmente, añade un registro en cada tabla usando INSERT INTO.*/

-- Ejercicio 1
-- Cargamos el archivo (Véase el README de la carpeta retos_sesion_4 como evidencia de la importación de los datos)
SELECT* FROM movies LIMIT 10;

-- Ejercicio 2
-- Debido al gran peso de los datos no pudieron ser cargados, sin embargo el ejercicio anterior muestra la evidencia de que sí se aprendió a realizar la limpieza y cargar los datos.
SELECT* FROM ratings LIMIT 10;

-- Ejercicio 3
-- Añadimos un registro a la tabla movies (Véase el README de retos_sesion_4 como evidencia de la adición del registro)
SELECT*
FROM movies
ORDER BY id DESC LIMIT 10; # Queremos saber el id del ultimo registro

INSERT INTO movies (id, title, genre) VALUES(3953, 'Harry Potter', 'Action');

-- Comprobamos el nuevo registro (Véase el README de la carpeta retos_sesion_4)
SELECT*
FROM movies
ORDER BY id DESC LIMIT 3;

-- Añadimos un registro a la tabla ratings
-- Se hace la simulación del código, pero debido a la gran cantida de datos, el archivo ratings no pudo ser cargado.
INSERT INTO ratings(user_id, movie_id, rating, time_stamp) VALUES(6041, 1194, 5, 978300760)

