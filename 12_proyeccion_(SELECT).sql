-- Proyeccion
-- Es la operación que muestra los datos de una o más relaciones

-- Ver toda la tabla
SELECT * FROM usuarios u;

-- Ver algunas columnas
SELECT nombre, apellido, edad FROM usuarios u;

-- Asignando ALIAS a la tabla
SELECT t1.nombre, t1.apellido, t1.edad FROM usuarios t1;

-- Columnas calculadas
SELECT nombre, precio, cantidad, (precio * cantidad) AS ganancia FROM productos;

-------------------------------------------------------------------------
USE curso_db;
CREATE TABLE IF NOT EXISTS usuarios (
	usuario_id INT UNSIGNED AUTO_INCREMENT,
	nombre VARCHAR(30) NOT NULL,
	apellido VARCHAR(30) NOT NULL,
	correo VARCHAR(50),
	direccion VARCHAR(100) DEFAULT "Sin direccion",
	edad INT DEFAULT 0 COMMENT 'entero',
	PRIMARY KEY(usuario_id),
	UNIQUE KEY(correo)
) AUTO_INCREMENT = 100, COMMENT = 'Tabla de usuarios';



CREATE TABLE productos (
  producto_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(50) NOT NULL,
  descripcion VARCHAR(50),
  precio DECIMAL(7,2),
  cantidad INT UNSIGNED
);

INSERT INTO productos (nombre, descripcion, precio, cantidad) VALUES
  ("Computadora", "Macbook Air M2", 29999.99, 5),
  ("Celular", "Nothing Phone 1", 11999.99, 15),
  ("Cámara Web", "Logitech C920", 1500, 13),
  ("Micrófono", "Blue Yeti", 2500, 19),
  ("Audífonos", "Audífonos Bose", 6500, 10);
