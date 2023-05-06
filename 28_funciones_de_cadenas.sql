/*
* FUNCIONES DE CADENAS DE TEXTO
* Similar a las funciones de los lenguajes de programacion
*/

SELECT ('Hola Mundo');
SELECT LOWER('Hola Mundo');
SELECT LCASE('Hola Mundo');
SELECT UPPER('Hola Mundo');
SELECT UCASE('Hola Mundo');
SELECT LEFT('Hola Mundo', 6);
SELECT RIGHT('Hola Mundo', 6);
SELECT LENGTH('Hola Mundo');
SELECT REPEAT('Hola Mundo', 3);
SELECT REVERSE('Hola Mundo');
SELECT REPLACE('Hola Mundo', 'o', 'x');
SELECT LTRIM('    Hola Mundo    ');
SELECT RTRIM('    Hola Mundo    ');
SELECT TRIM('    Hola Mundo     ');
SELECT STRCMP('	Compare two strings', 'Devuelve 1, -1 y 0');
SELECT CONCAT('Hola Mundo',' desde ', 'SQL');
SELECT CONCAT_WS('-','Hola','Mundo','desde','SQL');

SELECT UPPER(nombre), LOWER(descripcion), precio  FROM productos;