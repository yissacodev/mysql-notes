USE curso_db;

/* Constraints
 * PRIMARY KEY
 *  Establece llave primaria
 *  
 *  Como funcion
 * 	PRIMARY KEY(usuario_id)
 * 
 * UNIQUE
 *  Establece atributo unico, sus valores no se pueden repetir
 * 
 *  Como funcion
 *  UNIQUE KEY(attr)
 * 
 * NOT NULL
 *  Atributo no puede ser nulo
 * 
 * NULL
 *  Atributo nulo
 *  
 *  ver más: https://dev.mysql.com/doc/refman/8.0/en/create-table.html
 * https://www.cockroachlabs.com/blog/sql-add-constraint/#:~:text=ADD%20CONSTRAINT%20is%20a%20SQL,PRIMARY%20KEY%20(col1%2C%20col2)%3B
 */

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
