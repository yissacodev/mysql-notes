-- Funciones agregadas
-- Hacen una simplificacion a las columnas, la simplificacion puede ser
-- MIN(col) - Minimo valor de la columna col
-- MAX(col) - MAXIMO valor de la columna col
-- AVG(col) - Promedio valor de la columna col

-- Ejecutar el script dentro de la carpeta datafiles

-- Ejemplos con alias
SELECT MAX(precio) AS precio_max FROM productos;
SELECT MIN(precio) AS precio_min FROM productos;
SELECT SUM(cantidad) AS existencias FROM productos;
SELECT AVG(precio) AS precio_promedio FROM productos;

-- Contar filas
SELECT COUNT(*) AS productos_total FROM productos;