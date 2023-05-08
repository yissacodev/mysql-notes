CREATE DATABASE servicio_suscripcion_db;
USE servicio_suscripcion_db;

CREATE TABLE suscripciones (
  suscripcion_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  suscripcion VARCHAR(30) NOT NULL,
  costo DECIMAL(5,2) NOT NULL
);

INSERT INTO suscripciones VALUES
  (0, 'Bronce', 199.99),
  (0, 'Plata', 299.99),
  (0, 'Oro', 399.99);

CREATE TABLE clientes (
  cliente_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(30) NOT NULL,
  correo VARCHAR(50) UNIQUE
);

CREATE TABLE tarjetas (
  tarjeta_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  cliente INT UNSIGNED,
  tarjeta BLOB,
  FOREIGN KEY (cliente)
    REFERENCES clientes(cliente_id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE
);

CREATE TABLE servicios(
  servicio_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  cliente INT UNSIGNED,
  tarjeta INT UNSIGNED,
  suscripcion INT UNSIGNED,
  FOREIGN KEY(cliente)
    REFERENCES clientes(cliente_id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  FOREIGN KEY(tarjeta)
    REFERENCES tarjetas(tarjeta_id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  FOREIGN KEY(suscripcion)
    REFERENCES suscripciones(suscripcion_id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE
);

CREATE TABLE actividad_clientes(
  ac_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  cliente INT UNSIGNED,
  fecha DATETIME,
  FOREIGN KEY (cliente)
    REFERENCES clientes(cliente_id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE
);
