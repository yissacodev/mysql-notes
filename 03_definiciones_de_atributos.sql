USE curso_db;
--  
/* Definiciones de columna
 * AUTO_INCREMENT 
 * 	Si la columna es numerica hace que cada registro aumente de 1 en 1
 *  
 *  Valor inicial se puede alterar
 * 
 * UNSIGNED
 *  Entero sin signo (0 a 4000000000 aprox.)
 *
 * COMMENT 'string'
 *  Comentario de atributo
 * 
 * DEFAULT <valor>
 *  Establece valor por defecto
 *  ver más: https://dev.mysql.com/doc/refman/8.0/en/create-table.html
 * */


CREATE TABLE IF NOT EXISTS usuarios (
	usuario_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	nombre VARCHAR(30),
	apellido VARCHAR(30),
	correo VARCHAR(50),
	direccion VARCHAR(100) DEFAULT "Sin direccion",
	edad INT DEFAULT 0 COMMENT 'entero'
);
