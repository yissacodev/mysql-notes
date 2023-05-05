-- Operaciones sobre atributos o columnas
-- Agregar una columna
ALTER TABLE usuarios ADD COLUMN nacimiento VARCHAR(15);

-- Agregacion total
ALTER TABLE users ADD id INT UNSIGNED NOT NULL DEFAULT 'Sin apellido' AUTO_INCREMENT;

-- Modificar EL TIPO DE DATO de una columna
ALTER TABLE usuarios MODIFY nacimiento DATE;

-- Modificar total
ALTER TABLE usuarios MODIFY correo bigint(20) UNSIGNED NOT NULL default '0';

-- Eliminar modificador NOT NULL
ALTER TABLE usuarios MODIFY apellido VARCHAR(30) NOT NULL;

-- Agregar modificador NOT NULL
ALTER TABLE usuarios MODIFY apellido VARCHAR(30) NULL;

-- Renombrar 
ALTER TABLE usuarios CHANGE nacimiento fechanacimiento VARCHAR(15);
-- VARCHAR(15) puede se cualquier tipo de dato

-- Eliminar
ALTER TABLE usuarios DROP COLUMN fecha_nacimiento;

