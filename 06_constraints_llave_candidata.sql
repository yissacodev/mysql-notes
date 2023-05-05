USE curso_db;

/* Constraints LLAVE CANDIDATA
 * UNIQUE (Llave candidata)
 *  Establece atributo unico, sus valores no se pueden repetir
 * 
 *  Como funcion
 *  UNIQUE KEY(attr)
 */



----------- Creación de Llave candidata ---------------------
CREATE TABLE IF NOT EXISTS usuarios (
	usuario_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	nombre VARCHAR(30) NOT NULL,
	apellido VARCHAR(30) NOT NULL,
	correo VARCHAR(50) UNIQUE,
	direccion VARCHAR(100) DEFAULT "Sin direccion",
	edad INT DEFAULT 0 COMMENT 'entero'
);

-- O tambien
CREATE TABLE IF NOT EXISTS usuarios (
	usuario_id INT UNSIGNED AUTO_INCREMENT,
	nombre VARCHAR(30) NOT NULL,
	apellido VARCHAR(30) NOT NULL,
	correo VARCHAR(50),
	direccion VARCHAR(100) DEFAULT "Sin direccion",
	edad INT DEFAULT 0 COMMENT 'entero',
	PRIMARY KEY(usuario_id),
	UNIQUE KEY(correo)
);


-- Forma 2. Alterando algun atributo de la tabla
ALTER TABLE usuarios ADD UNIQUE(correo);

-- Forma 3. Personalizando el nombre del constraint
ALTER TABLE usuarios ADD CONSTRAINT uk_correo UNIQUE(correo);

-- Eliminar llave candidata
ALTER TABLE usuarios DROP INDEX correo;