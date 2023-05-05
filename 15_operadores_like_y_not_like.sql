-- Operador LIKE
-- Opera sobre cadenas para encontrar alguna coincidencia

/* COMODINES
 * Similar a las expresiones regulares, son simbolos que representan caracteres
 * 
 * % - coincide con cualquier número de caracteres, incluso con cero caracteres.
 * _ - coincide exactamente con un carácter.
 * \% coincide con un carácter %
 * \_ coincide con un _ carácter
 * */


Algún usuario que tenga la ch en su nombre
SELECT * FROM usuarios WHERE nombre LIKE '%ch%';

Algún usuario que tenga en su nombre 'sopo'
SELECT * FROM usuarios WHERE nombre LIKE '_sopo';

-- Operador NOT LIKE
--Niega el operador LIKE