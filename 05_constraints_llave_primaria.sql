USE curso_db;

/* Constraints LLAVE PRIMARIA
 * PRIMARY KEY
 *  Establece llave primaria
 *  
 *  Como funcion
 * 	PRIMARY KEY(usuario_id)
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
	correo VARCHAR(50),
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
	PRIMARY KEY(usuario_id)
);




-- Forma 2. Alterando el esquema de la tabla
 ALTER TABLE testtable ADD PRIMARY KEY(id_tabla);

-- Forma 3. Personalizando el nombre de la constraint (COMO OPERACION, LO REALIZA PERO IGNORA EL NOMBRE)
ALTER TABLE testtable ADD CONSTRAINT pk_id_tabla PRIMARY KEY(id_tabla);

-- ELIMINAR LLAVE PRIMARIA Y REASIGNAR OTRA
ALTER TABLE  testtable DROP PRIMARY KEY, ADD PRIMARY KEY (  'name_table' );


/* Llave compuesta
Suelen encontrarse en entidades resultantes de cardinalidad Muchos a Muchos
Se asignan a dos o más llaves foraneas.

Ver en repositorio: 
	Problemas de bases de datos
	https://github.com/acosta032/problemas-de-bases-de-datos

Ejemplo: esta es la tabla resultante de N:M
Sus tablas relacionadas son alumno y asignatura:

CREATE TABLE IF NOT EXISTS calificaciones(
	id_alumno INT UNSIGNED NOT NULL,
	id_asig INT UNSIGNED NOT NULL,
	nota DECIMAL(3,2) NOT NULL,
	FOREIGN KEY(id_alumno) REFERENCES alumnos(id_alumno),
	FOREIGN KEY(id_asig) REFERENCES asignaturas(id_asig),

	PRIMARY KEY(id_alumno, id_asig) -- Llave compuesta
);
*/
