/* TRIGGERS o Disparadores
 * Un trigger o disparador es un objeto que se asocia con tablas y se almacena en la base de datos. 
 * Su nombre se deriva por el comportamiento que presentan en su funcionamiento, ya que se ejecutan cuando --  *sucede algún evento sobre las tablas a las que se encuentra asociado. 
 *
 *Los eventos que hacen que se ejecute un trigger son las operaciones de inserción (INSERT), borrado (DELETE)  *o actualización (UPDATE), ya que modifican los datos de una tabla.
 *
 *La utilidad principal de un trigger es mejorar la gestión de la base de datos, ya que no requieren que un   * usuario los ejecute.

 * SINTAXIS TRIGGERS

DELIMITER //
CREATE TRIGGER nombre_disparador
  [BEFORE | AFTER] [INSERT | UPDATE | DELETE]
  ON nombre_tabla
  FOR EACH ROW
BEGIN
END //
DELIMITER ;

*/

-- Ejecutar TRIGGER
-- Para ejecutar seleccionar el bloque y dar ALT + X
DELIMITER //
CREATE TRIGGER tg_actividad_clientes
  AFTER INSERT
  ON clientes
  FOR EACH ROW

  BEGIN
    -- Inserta el registro cuando se asigna un servicio
    INSERT INTO actividad_clientes VALUES (0, NEW.cliente_id, NOW());
    
  END //

DELIMITER ;
--------------------------------------------------
-- Verificar el efecto del Trigger:
CALL sp_asignar_servicio(2, 'Pacho', 'pacho@gmail.com', '7777772828', @res);

-- E ir a revisar la tabla 'actividad_clientes'
-- Debe tener un registro con id, cliente y fecha de insercion


-- Mostrar Triggers
SHOW TRIGGERS FROM servicio_suscripcion_db;

-- Eliminar Triggers
DROP TRIGGER tg_actividad_clientes;

