-- Operación DELETE 
-- Eliminaa tuplas de una tabla o de una operación de PROYECCION
-- Importante: DELETE siempre debe ir con la clausULA WHERE
DELETE FROM usuarios WHERE usuario_id = 12;

-- Vaciar tabla con REFERENCIAS
DELETE FROM nombre_tabla WHERE cualquier_atributo LIKE '%';
-- Ver mas: https://dev.mysql.com/doc/refman/5.7/en/delete.html