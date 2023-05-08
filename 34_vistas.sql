-- Vistas
-- Son entidades de la base de datos que sirven para guardar
-- consultas para su facil ejecucion
-- Se puede ver su existencia dentro de la estructura de la base de datos

-- Crear una vista
CREATE VIEW vista_caballeros AS
  SELECT c.caballero_id, c.nombre, a.armadura,
    s.signo, r.rango, e.ejercito, p.pais
    FROM caballeros c
    INNER JOIN armaduras a ON c.armadura = a.armadura_id 
    INNER JOIN signos s ON c.signo = s.signo_id 
    INNER JOIN rangos r ON c.rango  = r.rango_id 
    INNER JOIN ejercitos e ON c.ejercito  = e.ejercito_id 
  INNER JOIN paises p ON c.pais  = p.pais_id;

-- Visualizar la vista
SELECT * FROM vista_caballeros;

-- Eliminar vista
DROP VIEW vista_caballeros;

-- Ver TODAS las vistas de una base de datos
SHOW FULL TABLES IN caballeros_db WHERE TABLE_TYPE LIKE 'VIEW';