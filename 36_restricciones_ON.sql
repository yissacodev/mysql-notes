/* Restricciones de INTEGRIDAD
 * 
 * Se declaran en la TABLA QUE TIENE LAS REFERENCIAS FOREING KEY(...)
 * Funcionan en operaciones tipo DELETE y UPDATE en las cuales:
 * 
 * - CASCADE: Elimina o actualiza los campos de la tabla local y tablas que la referencian
 * - SET NULL: Establece el valor NULL los campos de la tabla local y tablas que la referencian
 * - SET DEFAULT: Establece el valor por defecto de los campos de la tabla local y tablas que la referencian
 * - RESTRICT (por defecto para DELETE y UPDATE): Restringe la eliminacion del registro de la tabla local
 */

CREATE DATABASE lenguajes_programacion_db;
USE  lenguajes_programacion_db;


CREATE TABLE lenguajes (
  lenguaje_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  lenguaje VARCHAR(30) NOT NULL
);

INSERT INTO lenguajes (lenguaje) VALUES
  ("JavaScript"),
  ("PHP"),
  ("Python"),
  ("Ruby"),
  ("JAVA");

 
 CREATE TABLE entornos (
  entorno_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  entorno VARCHAR(30) NOT NULL
);

INSERT INTO entornos (entorno) VALUES
  ("Frontend"),
  ("Backend");

-- Crear restricciones: 
 CREATE TABLE frameworks (
  framework_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  framework VARCHAR(30) NOT NULL,
  lenguaje INT UNSIGNED,
  entorno INT UNSIGNED,
  FOREIGN KEY (lenguaje)
    REFERENCES lenguajes(lenguaje_id)
    ON DELETE RESTRICT -- Restringir cuando se quiera eliminar un registro de esta tabla
    ON UPDATE CASCADE, -- Permitir actualizacion en cascada
  FOREIGN KEY (entorno)
    REFERENCES entornos(entorno_id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE
);

 INSERT INTO frameworks (framework, lenguaje, entorno) VALUES
  ("React", 1, 1),
  ("Angular", 1, 1),
  ("Vue", 1, 1),
  ("Svelte", 1, 1),
  ("Laravel", 2, 2),
  ("Symfony", 2, 2),
  ("Flask", 3, 2),
  ("Django", 3, 2),
  ("On Rails", 4, 2);

 ----------------------------
-- Ejemplo:
-- Actualizar el id del lenguaje 3 que pertenece a PYTHON de la tabla lenguajes
-- Ejecutar antes y despues
SELECT * FROM frameworks f INNER JOIN lenguajes l ON f.lenguaje = l.lenguaje_id;
SELECT * FROM lenguajes;

-- Actualiza en cascada
UPDATE lenguajes SET lenguaje_id = 13 WHERE lenguaje_id = 3;

-- Restrigir la eliminacion de registros relacionados (SALE ERROR)
DELETE FROM lenguajes WHERE lenguaje_id = 4;

-- Crear con ALTER
-- Primero eliminar la constraint
ALTER TABLE TABLENAME
drop CONSTRAINT FK_CONSTRAINTNAME;

-- Luego recrearla
ALTER TABLE TABLENAME
ADD CONSTRAINT FK_CONSTRAINTNAME
    FOREIGN KEY (FId)
    REFERENCES OTHERTABLE
        (Id)
    ON DELETE CASCADE ON UPDATE NO ACTION;
