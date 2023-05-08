--- PARAMETROS DE ENTRADA Y SALIDA
-- Se crean dentro de los parentesis donde van los parametros con los verbos:
-- IN - Entrada
-- OUT - SALIDA
-- Ejecutar la base de datos servicio_suscripciones_db.sql

-- Ejecutar el siguiente bloque DELIMITER a DELIMITER así:
-- seleccionar el bloque y dar ALT + X
DELIMITER //

CREATE PROCEDURE sp_asignar_servicio(
  IN i_suscripcion INT UNSIGNED,
  IN i_nombre VARCHAR(30),
  IN i_correo VARCHAR(50),
  IN i_tarjeta VARCHAR(16),
  OUT o_respuesta VARCHAR(50)
)
  
  BEGIN
    -- Declaracion de variables
    DECLARE existe_correo INT DEFAULT 0;
    DECLARE cliente_id INT DEFAULT 0;
    DECLARE tarjeta_id INT DEFAULT 0;
    
    START TRANSACTION;
  
      SELECT COUNT(*) INTO existe_correo
        FROM clientes
        WHERE correo = i_correo;
      
      IF existe_correo <> 0 THEN
        
        SELECT 'Tu correo ya ha sido registrado' INTO o_respuesta;
      
      ELSE 
      	-- LAST_INSERT_ID(): Obtener el id del ultimo registro ingresado

        INSERT INTO clientes VALUES (0, i_nombre, i_correo);
        SELECT LAST_INSERT_ID() INTO cliente_id; 
      
        INSERT INTO tarjetas
          VALUES (0, cliente_id, AES_ENCRYPT(i_tarjeta, cliente_id));
        SELECT LAST_INSERT_ID() INTO tarjeta_id; 
      
        INSERT INTO servicios VALUES (0, cliente_id, tarjeta_id, i_suscripcion);
      
        SELECT 'Servicio asignado con éxito' INTO o_respuesta;
      
      END IF;
    
    COMMIT;
    
  END //
  
DELIMITER ;

-----------------------
-- Ejecutando el procedimiento
CALL sp_asignar_servicio(2, 'Kenai', 'kenai@gmail.com', '1234567890123490', @res);

-- Leyendo la variable @res
SELECT @res;