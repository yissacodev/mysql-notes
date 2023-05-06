/* Clasula ORDER BY
* Se usa con la Clausula SELECT en la operacion de proyeccion y sirve para ordenar
* Las TUPLAS de una consulta con respecto a una columna
* 
* EL ORDEN SE ESPECIFICA EN LA CLASULA SELECT
* ASC - Ascendente
* DESC - Descendente
*/

-- Con banderas
SELECT nombre, precio, cantidad FROM productos ORDER BY precio DESC;
SELECT nombre, precio, cantidad FROM productos ORDER BY precio ASC;

-- Con los numeros de las columnas
SELECT nombre, cantidad FROM productos ORDER BY 2 ASC;
SELECT nombre, cantidad FROM productos ORDER BY 1, 2 ASC;