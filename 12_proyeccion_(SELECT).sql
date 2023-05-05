-- Proyeccion
-- Es la operación que muestra los datos de una o más relaciones

-- Ver toda la tabla
SELECT * FROM usuarios u;

-- Ver algunas columnas
SELECT nombre, apellido, edad FROM usuarios u;

-- Asignando ALIAS a la tabla
SELECT t1.nombre, t1.apellido, t1.edad FROM usuarios t1;

-------------------------------------------------------------------------
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
