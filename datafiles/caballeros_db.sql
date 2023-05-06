CREATE TABLE armaduras (
  armadura_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  armadura VARCHAR(30) NOT NULL
);

CREATE TABLE signos (
  signo_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  signo VARCHAR(30) NOT NULL
);

CREATE TABLE rangos (
  rango_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  rango VARCHAR(30) NOT NULL
);

CREATE TABLE ejercitos (
  ejercito_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  ejercito VARCHAR(30) NOT NULL
);

CREATE TABLE paises (
  pais_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  pais VARCHAR(30) NOT NULL
);

CREATE TABLE caballeros (
  caballero_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(30),
  armadura INT UNSIGNED,
  rango INT UNSIGNED,
  signo INT UNSIGNED,
  ejercito INT UNSIGNED,
  pais INT UNSIGNED,
  FOREIGN KEY(armadura) REFERENCES armaduras(armadura_id),
  FOREIGN KEY(rango) REFERENCES rangos(rango_id),
  FOREIGN KEY(signo) REFERENCES signos(signo_id),
  FOREIGN KEY(ejercito) REFERENCES ejercitos(ejercito_id),
  FOREIGN KEY(pais) REFERENCES paises(pais_id)
);

INSERT INTO armaduras VALUES
  (1, "Pegaso"),
  (2, "Dragón"),
  (3, "Cisne"),
  (4, "Andrómeda"),
  (5, "Fénix"),
  (6, "Géminis"),
  (7, "Acuario"),
  (8, "Wyvern"),
  (9, "Dragón Marino"),
  (10, "Bennu");

CREATE TABLE armaduras (
  armadura_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  armadura VARCHAR(30) NOT NULL
);

CREATE TABLE signos (
  signo_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  signo VARCHAR(30) NOT NULL
);

CREATE TABLE rangos (
  rango_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  rango VARCHAR(30) NOT NULL
);

CREATE TABLE ejercitos (
  ejercito_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  ejercito VARCHAR(30) NOT NULL
);

CREATE TABLE paises (
  pais_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  pais VARCHAR(30) NOT NULL
);

CREATE TABLE caballeros (
  caballero_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(30),
  armadura INT UNSIGNED,
  rango INT UNSIGNED,
  signo INT UNSIGNED,
  ejercito INT UNSIGNED,
  pais INT UNSIGNED,
  FOREIGN KEY(armadura) REFERENCES armaduras(armadura_id),
  FOREIGN KEY(rango) REFERENCES rangos(rango_id),
  FOREIGN KEY(signo) REFERENCES signos(signo_id),
  FOREIGN KEY(ejercito) REFERENCES ejercitos(ejercito_id),
  FOREIGN KEY(pais) REFERENCES paises(pais_id)
);

INSERT INTO armaduras VALUES
  (1, "Pegaso"),
  (2, "Dragón"),
  (3, "Cisne"),
  (4, "Andrómeda"),
  (5, "Fénix"),
  (6, "Géminis"),
  (7, "Acuario"),
  (8, "Wyvern"),
  (9, "Dragón Marino"),
  (10, "Bennu");

INSERT INTO rangos VALUES
  (1, "Bronce"),
  (2, "Oro"),
  (3, "Espectro"),
  (4, "Marino");

INSERT INTO signos VALUES
  (1, "Aries"),
  (2, "Tauro"),
  (3, "Géminis"),
  (4, "Cancer"),
  (5, "Leo"),
  (6, "Virgo"),
  (7, "Libra"),
  (8, "Escorpión"),
  (9, "Sagitario"),
  (10, "Capricornio"),
  (11, "Acuario"),
  (12, "Piscis");

INSERT INTO ejercitos VALUES
  (1, "Athena"),
  (2, "Hades"),
  (3, "Poseidón");

INSERT INTO paises VALUES
  (1, "Japón"),
  (2, "Rusia"),
  (3, "Grecia"),
  (4, "Francia"),
  (5, "Inglaterra");


INSERT INTO caballeros VALUES
  (1,"Seiya", 1, 1, 9, 1, 1),
  (2,"Shiryu", 2, 1, 7, 1, 1),
  (3,"Hyoga", 3, 1, 11, 1, 2),
  (4,"Shun", 4, 1, 6, 1, 1),
  (5,"Ikki", 5, 1, 5, 1, 1),
  (6,"Kanon", 6, 2, 3, 1, 3),
  (7,"Saga", 6, 2, 3, 1, 3),
  (8,"Camus", 7, 2, 11, 1, 4),
  (9,"Rhadamanthys", 8, 3, 8, 2, 5),
  (10,"Kanon", 9, 4, 3, 3, 3),
  (11,"Kagaho", 10, 3, 5, 2, 2);