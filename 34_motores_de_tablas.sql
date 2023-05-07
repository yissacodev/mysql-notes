-- Motores de tablas 
-- Son motores que usan las tablas de MySql sirven para
-- Crear tablas que tengan funciones especiales como

-- Motor MyISAM: Sirve para crear tablas de calculos o almacenamiento
-- NO SE PUEDE HACER OPERACIONES con otras tablas
CREATE TABLE armaduras_myisam (
  armadura_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  armadura VARCHAR(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- Motor InnoDB: Sirve para crear tablas comunes, si no se especifica
-- MySql las crea por defecto
CREATE TABLE armaduras_innodb (
  armadura_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  armadura VARCHAR(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

