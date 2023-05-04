-- Operaciones sobre atributos o columnas
-- Agregar una columna
ALTER TABLE usuarios ADD COLUMN nacimiento VARCHAR(15);

-- Modificar EL TIPO DE DATO de una columna
ALTER TABLE usuarios MODIFY nacimiento DATE;

-- Modificar total
ALTER TABLE usuarios MODIFY correo bigint(20) unsigned NOT NULL default '0';

-- Renombrar 
ALTER TABLE usuarios CHANGE nacimiento fechanacimiento VARCHAR(15);
-- VARCHAR(15) puede se cualquier tipo de dato

-- Eliminar
ALTER TABLE usuarios DROP COLUMN fecha_nacimiento;