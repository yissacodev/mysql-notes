-- Clausula HAVING
-- Sirve para hacer condicionales con columnas generadas dinamicamente
-- Como son las nombradas por un alias en las funciones de agregacion

-- LA SINTAXIS DEBE IR EN EL ORDEN INDICADO
-- 1. Columnas, y columnas generadas
-- 2. Tabla donde buscar
-- 3. Condición sobre columnas de la tabla
-- 4. GROUP BY .
-- 5. HAVING - Condicion sobre columnas generadas

-- Contar el numero de caballeros del ejercito Athena cuyo rango sea mayor que 4
SELECT rango, COUNT(*) AS total FROM caballeros WHERE ejercito = "Athena" GROUP BY rango HAVING total >= 4; 
