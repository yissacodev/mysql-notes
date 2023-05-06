-- Llaves foraneas (CREAR LA BASE DE DATOS datafiles/caballeros_db.sql)
-- Creacion de llaves foraneas
-- Forma 1. En la definicion de la tabla con la funcion FOREIGN KEY
CREATE TABLE caballeros (
  caballero_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(30),
  armadura INT UNSIGNED,
  rango INT UNSIGNED,
  signo INT UNSIGNED,
  ejercito INT UNSIGNED,
  pais INT UNSIGNED,
  FOREIGN KEY(armadura) REFERENCES armaduras(armadura_id),
  FOREIGN KEY(rango) REFERENCES rangos(rango_id),
  FOREIGN KEY(signo) REFERENCES signos(signo_id),
  FOREIGN KEY(ejercito) REFERENCES ejercitos(ejercito_id),
  FOREIGN KEY(pais) REFERENCES paises(pais_id)
);

-- Forma 2. Creando con la ALTER
ALTER TABLE caballeros ADD FOREIGN KEY(armadura) REFERENCES armaduras(armadura_id);

-- Forma 3. Creando con nombre de constraint
ALTER TABLE caballeros ADD CONSTRAINT armadura_fk FOREIGN KEY(armadura) REFERENCES armaduras(armadura_id);

-- Eliminar llave foranea
-- Forma 1. Eliminando con el nombre de la constraint
ALTER TABLA caballeros DROP CONSTRAINT caballeros_ibfk_1;