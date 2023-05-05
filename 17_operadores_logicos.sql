-- Operadores lógicos
-- AND - Conjunción
-- OR - Disyunción

-- Usuario sin dirección mayor de 30 años
SELECT * FROM usuarios WHERE direccion = 'Sin dirección' AND edad > 30;


-- Usuarios menores de 20 o mayores de 50
SELECT * FROM usuarios WHERE edad < 20 OR edad > 50;