-- Clausula WHERE ... IN
-- Realiza una coincidencia dentro de un conjunto de valores

-- Individuos con los nombre especificados
SELECT * FROM usuarios WHERE nombre IN ('Pacho', 'Isopo', 'Pancracia', 'Fedrico');


-- Individuos con las edades 50, 60 y 70
SELECT * FROM usuarios WHERE edad IN (20, 50, 78);