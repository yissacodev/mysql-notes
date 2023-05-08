-- INDICES
-- Son registros que se alojan en el almacenamiento
-- de la base de datos y sirven para agilizar la transmisión
-- De información de los elementos de la base de datos.
-- Por defecto LAS PRIMARY KEYS y UNIQUE KEYS son indices



-- Mostrar INDICES de una tabla
SHOW INDEX FROM caballeros;

-- Crear un indice
-- Forma 1. En la definicion de la tabla
CREATE TABLE caballeros (
  caballero_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(30),
  armadura VARCHAR(30) UNIQUE,
  rango VARCHAR(30),
  signo VARCHAR(30),
  ejercito VARCHAR(30),
  pais VARCHAR(30),
  INDEX i_rango (rango), -- Nombre del indice y atributo al cual se le aplica
  INDEX i_signo (signo)
);

-- Con la instruccion CREATE
CREATE INDEX i_ejercito ON caballeros(ejercito);


-- Con ALTER luego de haber creado la tabla
ALTER TABLE caballeros ADD INDEX i_ejercito (ejercito);


-- Eliminar indice
DROP INDEX i_ejercito ON caballeros;




