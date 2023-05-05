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

INSERT INTO usuarios (nombre, apellido, correo, edad) VALUES 
  ("Jon","MirCha","jonmircha@gmail.com", 38),
  ("kEnAi","MirCha","kenai@gmail.com", 10),
  ("Irma","Campos","irma@outlook.com", 38),
  ("Pepito", "Perez", "pepito@hotmail.com", 28),
  ("Rosita", "Juárez", "rosita@yahoo.com", 19),
  ("Macario", "Guzman", "macario@outlook.com", 55);
  
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