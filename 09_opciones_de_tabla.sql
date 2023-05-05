USE curso_db;
/* Opciones de tabla
*  Se declaran despues de crear la tabla. Algunos son:
* 
* AUTO_INCREMENT = 1234
* 	Establecer valor inicial de definicion AUTO_INCREMENT
* 
* COMMENT [=] 'string'
* 	Comentario de tabla
* 
* MAX_ROWS [=] value | MIN_ROWS [=] value
* 	Establecer maximo y minimo numero de files
* 
* CHARACTER SET [=] charset_name
* 	Set de caracteres
* 	https://dev.mysql.com/doc/refman/8.0/en/charset-charsets.html
* 
* 	SHOW CHARACTER SET;
* 
* ENGINE [=] engine_name
* 	Motor de tablas
*
* Ver mas: https://dev.mysql.com/doc/refman/8.0/en/create-table.html
*/
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


SHOW CHARACTER SET;