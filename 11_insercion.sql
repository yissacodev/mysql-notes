-- Inserción de datos
-- Se hace con INSERT INTO y hay varias formas de hacerlo
-- Crear la tabla:

CREATE TABLE IF NOT EXISTS usuarios (
	usuario_id INT UNSIGNED AUTO_INCREMENT,
	nombre VARCHAR(30) NOT NULL,
	apellido VARCHAR(30) NOT NULL,
	correo VARCHAR(50),
	direccion VARCHAR(100) DEFAULT "Sin direccion",
	edad INT DEFAULT 0 COMMENT 'entero',
	PRIMARY KEY(usuario_id),
	UNIQUE KEY(correo)
);


-- Forma 1. Insertar sin especificar columnas y en orden
INSERT INTO usuarios VALUES (0, 'Pacho', 'Acosta', 'pacho@gmail.com, 'Dirección de Acosta', 9);

-- Forma 2. Se ingresan los datos en diferente orden en que se defininieron
-- los atributos en la tabla o se ingresan ciertos atributos de la tabla.
-- Se utiliza la orden INSERT INTO <TABLA>(<ATRIBUTOS) VALUES(<VALORES>)

INSERT INTO usuarios (apellidos, edad, nombre) VALUES ('Acosta', '26', 'Nijuusan');

-- Forma 3. Usando la instrucción SET
INSERT INTO usuarios SET nombre = "Albeiro", apellido = "Rodriguez", edad = 38;

-- Forma 4. Insertando varias filas
INSERT INTO usuarios (nombre, apellido, edad, correo) VALUES 
('Diego', 'Hernandez', 16, 'die@mail.com'),
('Roberta', 'Pardo', 18, 'rob@mail.com'),
('Miguel', 'Arango', 21, 'mig@mail.com')
;


-- Forma 5. Importación de archivos delimitados por coma CSV

-- Forma 6. Importacion de datos mediante archivos planos delimitados
-- por punto y coma tipo CSV, sin encabezado

-- Forma 7. Importación de datos desde un archivo plano 'csv' delimitado por '|'
-- con encabezado  cuyos campos estan en  diferente orden que la tabla

-- Forma 8. Importacion de datos mediante archivos planos delimitados
-- por  tabulador (delimitador por defecto) tipo CSV, sin encabezado
-- en el mismo orden que el esquema