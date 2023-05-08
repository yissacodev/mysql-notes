-- Clausula LIMIT
-- Limita los resultados de una consulta 
-- - 1 parametro - Numero de filas
-- - 2 parametros - Intervalos de filas

-- Todos los frameworks
SELECT * FROM frameworks;

-- Los dos primeros
SELECT * FROM frameworks LIMIT 2;

-- Desde el 3er registro elige 4 en adelante
SELECT * FROM frameworks LIMIT 2, 4;
