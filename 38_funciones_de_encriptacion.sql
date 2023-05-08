-- Funciones de encriptacion
SELECT MD5('una contraseña');
SELECT SHA1('una contraseña');
SELECT SHA2('una contraseña', 256);
SELECT AES_ENCRYPT('una contraseña', 'llave_mia_personalizada');
SELECT AES_DECRYPT(contenido_binario, 'llave_mia_personalizada');
-- Ver mas: https://dev.mysql.com/doc/refman/8.0/en/encryption-functions.html

-- Ejercicio
CREATE DATABASE banco_db;

-- El tipo de dato para almacenar contenido binario es BLOB (Binary Large Object)
CREATE TABLE pagos_recurrentes(
  cuenta VARCHAR(8) PRIMARY KEY,
  nombre VARCHAR(50) NOT NULL,
  tarjeta BLOB
);

-- Se encripta con AES_ENCRYPT('codigo', 'clave')
INSERT INTO pagos_recurrentes VALUES
  ('12345678', 'Jon', AES_ENCRYPT('1234567890123488', '12345678')),
  ('12345677', 'Irma', AES_ENCRYPT('1234567890123477', '12345677')),
  ('12345676', 'Kenai', AES_ENCRYPT('1234567890123466', '12345676')),
  ('12345674', 'Kala', AES_ENCRYPT('1234567890123455', 'super_llave')),
  ('12345673', 'Miguel', AES_ENCRYPT('1234567890123444', 'super_llave'));

-- Se recomienta usar un campo propio del usuario como CLAVE (por ejemplo su id, o nombre)
-- Así sera el usuario el unico que pueda acceder a su contenido

-- Consulta donde se hace un cast del contenido desencriptado
SELECT CAST(AES_DECRYPT(tarjeta, '12345678') AS CHAR) AS tdc, nombre
  FROM pagos_recurrentes;  

SELECT CAST(AES_DECRYPT(tarjeta, 'super_llave') AS CHAR) AS tdc, nombre
  FROM pagos_recurrentes;  

SELECT CAST(AES_DECRYPT(tarjeta, 'qwerty') AS CHAR) AS tdc, nombre
  FROM pagos_recurrentes;  
