-- Luego de creada la base de datos curso_db
-- Para trabajar sobre ella:
USE curso_db;

-- Mostrar tablas
SHOW TABLES;

-- Describir las caracteristicas de una tabla
DESCRIBE nombre_tabla;

-- Crear tabla
CREATE TABLE usuarios(
	nombre VARCHAR(50),
	correo VARCHAR(50)
);
CREATE TABLE tarifas (
	monto VARCHAR(50),
	ganancia VARCHAR(50)
);

-- Renombrar tabla
RENAME TABLE usuarios TO users;

-- Renombrar varias tablas
RENAME TABLE usuarios TO usuarios_nueva,
tarifas TO precios;

-- ALTER
-- Renombrar
ALTER TABLE usuarios RENAME users

-- Eliminar tabla
DROP TABLE usuarios;

-- Vaciar tabla
TRUNCATE TABLE usuarios;
