----------- Gestion de usuarios--------------------------
CREATE DATABASE curso_db;
---------------------------------------------------------
-- Crear usuario con username, dominio y contraseña
CREATE USER 'acosta032'@'localhost' IDENTIFIED BY 'acosta032';

-- Privilegios
-- Todos los permisos
GRANT ALL PRIVILEGES ON curso_db TO 'acosta032'@'localhost';
-- e inmediatamente ejecutar:
FLUSH PRIVILEGES;

-- Mostrar los permisos
SHOW GRANTS FOR 'acosta032'@'localhost';

-- Revocar permisos
REVOKE ALL, GRANT OPTION FROM 'acosta032'@'localhost';

-- Eliminar usuario
DROP USER 'acosta032'@'localhost';