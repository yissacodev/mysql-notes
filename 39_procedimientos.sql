-- PROCEDIMIENTO (STORE PROCEDURES)
-- Son estructuras de ejecución de lógica similares a las funciones en 
-- Cualquier otro lenguaje (Ver al final las instrucciones necesarias)
-- Ver más: https://dev.mysql.com/doc/refman/5.7/en/alter-procedure.html

-- Crear procedimientos
DELIMITER // -- Establecer delimitador //

CREATE PROCEDURE sp_obtener_suscripciones()
	BEGIN -- Inicia el codigo
		SELECT * FROM suscripciones;
		
		
	END // -- Finaliza
DELIMITER ;




-- Invocar el procedimiento
CALL sp_obtener_suscripciones();

-- Modificar procedimiento
ALTER PROCEDURE sp_obtener_suscripciones()
	BEGIN
		-- Nuevas Sentencias...
	END

-- Eliminar procedimiento
DROP PROCEDURE sp_obtener_suscripciones;

-- Listar Store procedures de la base de datos
SHOW PROCEDURE STATUS WHERE db = 'servicio_suscripcion_db';


------------------------------------------------
-- Base de datos e instrucciones necesarias:
CREATE DATABASE servicio_suscripcion;

CREATE TABLE suscripciones (
  suscripcion_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  suscripcion VARCHAR(30) NOT NULL,
  costo DECIMAL(5,2) NOT NULL
);

INSERT INTO suscripciones VALUES
  (0, 'Bronce', 199.99),
  (0, 'Plata', 299.99),
  (0, 'Oro', 399.99);

CREATE TABLE clientes (
  cliente_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(30) NOT NULL,
  correo VARCHAR(50) UNIQUE
);

CREATE TABLE tarjetas (
  tarjeta_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  cliente INT UNSIGNED,
  tarjeta BLOB,
  FOREIGN KEY (cliente)
    REFERENCES clientes(cliente_id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE
);

CREATE TABLE servicios(
  servicio_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  cliente INT UNSIGNED,
  tarjeta INT UNSIGNED,
  suscripcion INT UNSIGNED,
  FOREIGN KEY(cliente)
    REFERENCES clientes(cliente_id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  FOREIGN KEY(tarjeta)
    REFERENCES tarjetas(tarjeta_id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  FOREIGN KEY(suscripcion)
    REFERENCES suscripciones(suscripcion_id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE
);

CREATE TABLE actividad_clientes(
  ac_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  cliente INT UNSIGNED,
  fecha DATETIME,
  FOREIGN KEY (cliente)
    REFERENCES clientes(cliente_id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE
);

SELECT * FROM suscripciones;
SELECT * FROM clientes;
SELECT * FROM tarjetas;
SELECT * FROM servicios;
SELECT * FROM actividad_clientes;
