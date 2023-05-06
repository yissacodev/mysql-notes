-- Indices FULL TEXT
-- Son indices  que se asignan a un conjunto de atributos
-- mediante cierta instruccion hace la busqueda de alguna
-- coincidencia EN TODOS LOS ATRIBUTOS

-- Crear indice FULLTEXT
-- Forma 1. En la definicion de la tabla
CREATE TABLE caballeros (
  caballero_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(30),
  armadura VARCHAR(30) UNIQUE,
  rango VARCHAR(30),
  signo VARCHAR(30),
  ejercito VARCHAR(30),
  pais VARCHAR(30),
  FULLTEXT INDEX fi_search(armadura, rango, signo, ejercito, pais)
);

-- Forma 2. Creando con ALTER
ALTER TABLE caballeros ADD FULLTEXT fi_search(armadura, rango, signo, ejercito, pais);

-- Forma 3. Creando con CREATE FULL INDEX
CREATE FULLTEXT INDEX fi_search ON caballeros(armadura, rango, signo, ejercito, pais);

-- Eliminar indice
DROP INDEX fi_search ON caballeros;

-- Ver mas: https://www.anerbarrena.com/mysql-create-index-5281/