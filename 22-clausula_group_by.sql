/* Clausula GROUP BY
* Se usa con funciones agrupadas y sirve hacer conteos numéricos de registros
* que pueden coincidir una o más veces
*
*/

-- Lista de personas que tienen una apellido comun o no
SELECT apellido, COUNT(*) AS coincidencias_ape FROM usuarios u 
GROUP BY apellido ;


-- Numero de caballeros con distinto tipo de item
SELECT signo, COUNT(*) AS total FROM caballeros GROUP BY signo; 
SELECT armadura, COUNT(*) AS total FROM caballeros GROUP BY armadura; 
SELECT rango, COUNT(*) AS total FROM caballeros GROUP BY rango; 
SELECT pais, COUNT(*) AS total FROM caballeros GROUP BY pais; 
SELECT ejercito, COUNT(*) AS total FROM caballeros GROUP BY ejercito; 