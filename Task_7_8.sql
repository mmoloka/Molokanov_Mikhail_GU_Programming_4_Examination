# 7. В подключенном MySQL репозитории создать базу данных “Друзья человека”.

CREATE DATABASE friends_of_man;

# 8. Создать таблицы с иерархией из диаграммы в БД.

USE friends_of_man;

CREATE TABLE animals
(
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
kind VARCHAR(20)
);

CREATE TABLE pets
(
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
kind VARCHAR(20),
animal_id INT,
FOREIGN KEY (animal_id) REFERENCES animals(id)
);

CREATE TABLE sumpters
(
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
kind VARCHAR(20),
animal_id INT,
FOREIGN KEY (animal_id) REFERENCES animals(id)
);

CREATE TABLE dogs
(
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
`name` VARCHAR(20),
 skill VARCHAR(20),
 birth DATE,
 pet_id INT,
FOREIGN KEY (pet_id) REFERENCES pets(id)
 );

CREATE TABLE cats
(
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
`name` VARCHAR(20),
 skill VARCHAR(20),
 birth DATE,
 pet_id INT,
FOREIGN KEY (pet_id) REFERENCES pets(id)
 );

CREATE TABLE hamsters
(
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
`name` VARCHAR(20),
 skill VARCHAR(20),
 birth DATE,
 pet_id INT,
FOREIGN KEY (pet_id) REFERENCES pets(id)
 );

CREATE TABLE horses
(
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
`name` VARCHAR(20),
 skill VARCHAR(20),
 birth DATE,
 sumpter_id INT,
FOREIGN KEY (sumpter_id) REFERENCES sumpters(id)
 );

CREATE TABLE camels
(
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
`name` VARCHAR(20),
 skill VARCHAR(20),
 birth DATE,
 sumpter_id INT,
FOREIGN KEY (sumpter_id) REFERENCES sumpters(id)
 );

CREATE TABLE donkeys
(
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
`name` VARCHAR(20),
 skill VARCHAR(20),
 birth DATE,
 sumpter_id INT,
FOREIGN KEY (sumpter_id) REFERENCES sumpters(id)
 );



