-- Transacciones SQL
-- Es una operacion que permite ejecutar una instrucción 
-- para luego confirmarla o rechazarla
START TRANSACTION;
	UPDATE frameworks SET framework = "Vue.js" WHERE  framework_id = 11;
	DELETE FROM frameworks;
	INSERT INTO frameworks VALUES (0, "Spring", 5, 2);
ROLLBACK; -- Ignorar transaccion
COMMIT; -- Confirmar transaccion