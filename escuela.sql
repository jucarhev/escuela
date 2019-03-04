CREATE DATABASE escuela;

USE escuela;

CREATE TABLE alumnos(
	id int(10) not null auto_increment primary key
)ENGINE=INNODB;


CREATE TABLE grupos(
	id int(10) not null auto_increment primary key,
	letra varchar(2) not null,
	turno enum("Matutino","Vespertino"),
	asesor int(10)
)ENGINE=INNODB;


CREATE TABLE grados(
	id int(10) not null auto_increment primary key,
	nombre varchar(50),
	tipo varchar(50),
	inicio date,
	fin date
)ENGINE=INNODB;