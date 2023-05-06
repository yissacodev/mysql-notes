use curso_db;
-- Operación UPDATE
-- Actualiza uno o varios campos de las tuplas
-- IMPORTANTE: toda sentencia UPDATE debe llevar la clausula WHERE
-- Forma 1. UPDATE con SET 
UPDATE usuarios SET correo = "francisco@mail.com", direccion = "Altos de la montania" WHERE usuario_id = 10;

-- Ver https://dev.mysql.com/doc/refman/5.7/en/update.html

-- Forma 2. UPDATE con subconsulta
-- Establecer a todos los usuarios mayores de 60 años la dirección del barrio 'Barrio Cielo Azul'
UPDATE usuarios,
(SELECT usuario_id FROM usuarios
WHERE usuario_id IN 
	(SELECT usuario_id FROM usuarios		
	WHERE edad > 60))
	AS adultos_mayores
SET usuarios.direccion  = 'Barrio Cielo Azul'
WHERE usuarios.usuario_id = adultos_mayores.usuario_id;
