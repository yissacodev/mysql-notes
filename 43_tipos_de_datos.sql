/*
DECIMAL(X,Y)
    X Todos los digitos
    Y digitos a la derecha del punto decimal

    - Y no debe ser más grande que X
    - X sólo puede tener 65 dígitos
    - Y sólo puede tener 30 dígitos (de los 65 que tiene X como máximo)

Ej: DECIMAL(6,4)
    Puede ser: 78,4374
    Ver más: 

Puede usarse la opción UNSIGNED

https://parzibyte.me/blog/2017/09/22/entendiendo-tipo-dato-decimal-en-mysql/
*/

/*
DATE
    Usado para mostrar fechas SIN TIEMPO con el formato
        'YYYY-MM-DD' 

    Dentro del rango:
        '1000-01-01' to '9999-12-31'.

DATETIME
    Usado para mostrar fechas CON TIEMPO con el formato:
        'YYYY-MM-DD hh:mm:ss'

    Dentro del rango:
        '1000-01-01 00:00:00' to '9999-12-31 23:59:59'.


TIMESTAMP
    Usado para mostrar fechas CON TIEMPO con el formato:
        '1000-01-01 00:00:00' to '9999-12-31 23:59:59'.
    
    Dentro del rango:
        '1970-01-01 00:00:01' UTC to '2038-01-19 03:14:07' UTC.

    DATETIME Y TIMESTAMP:
        Pueden  contener valores fraccionales
            '1970-01-01 00:00:01.000000' to '2038-01-19 03:14:07.999999'
        
        Son generados automáticamente

    Ver: 
    https://dev.mysql.com/doc/refman/8.0/en/timestamp-initialization.html
    https://cambrico.net/mysql/como-insertar-automaticamente-la-fecha-y-hora-en-mysql

Ejemplo:
*/

CREATE TABLE IF NOT EXISTS ALUMNOS(
	cod_alumno INT UNSIGNED AUTO_INCREMENT NOT NULL PRIMARY KEY,
	nombre VARCHAR(100) NOT NULL COMMENT "Nombre de alumno",
	apellido VARCHAR(100) NOT NULL COMMENT "Apellido de alumno",
	domicilio VARCHAR(50) DEFAULT "" COMMENT "Direccion de alumno",
	creado TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT "Fecha de creación de registros",
  	modificado TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Fecha de actualización de registros"
) ENGINE = InnoDB DEFAULT CHARSET "utf8mb4" COMMENT "Tabla de alumnos de la universidad";