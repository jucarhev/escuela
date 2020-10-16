CREATE DATABASE escuela;

USE escuela;

--------------------------------------------------
CREATE TABLE grados(
	id int(10) not null auto_increment primary key,
	nombre varchar(50),
	tipo varchar(50),
	inicio date,
	fin date,
	status enum('Activo','Inactivo'),
	created_at date,
	updated_at date
)ENGINE=INNODB;

CREATE TABLE fechas_grados(
	id int(10) not null auto_increment primary key,
	id_grado int(10),
	fecha_fin date,
	fecha_inicio date,
	status enum('Terminado','En proceso')
)ENGINE=INNODB;

CREATE TABLE calendario(
	id int(10) not null auto_increment primary key,
	dia int(2) not null,
	mes int(2) not null,
	anio int(2) not null,
	evento varchar(255),
	duracion varchar(5)
)engine = innodb;

CREATE TABLE grupos(
	id int(10) not null auto_increment primary key,
	letra varchar(2) not null,
	turno enum("Matutino","Vespertino"),
	id_asesor int(10),
	id_grado int(10),
	created_at date,
	updated_at date
)ENGINE=INNODB;


CREATE TABLE materias(
	id int(10) not null auto_increment primary key,
	nombre varchar(100) not null,
	clave varchar(20) not null,
	id_maestro int(10)
)ENGINE=INNODB;

CREATE TABLE documentos(
	id int(10) not null auto_increment primary key,
	nombre varchar(200) not null,
	tipo enum("Original","Copia") not null,
	descripcion text
)ENGINE=INNODB;

CREATE TABLE documentos_alumnos(
	id int(10) not null auto_increment primary key,
	id_alumno int(10) not null,
	id_documento int(10) not null,
	status enum("Entregado","Pendiente","Extraviado") not null,
	fecha date
)ENGINE=INNODB;

CREATE TABLE trabajos(
	id int(10) not null auto_increment primary key,
	nombre varchar(200) not null,
	tipo enum("Tarea","Trabajo") not null,
	status enum("Entregado","Pendiente","No entregado"),
	calificacion decimal(2.1),
	fecha_inicio date,
	fecha_fin date
)ENGINE=INNODB;

CREATE TABLE horarios(
	id int(10) not null auto_increment primary key,
	dia enum("Lunes","Martes","Miercoles","Jueves","Viernes"),
	id_materia int(10) not null,
	id_asesor int(10) not null,
	id_grupo int(10) not null,
	hora_inicio varchar(10),
	hora_fin varchar(10)
)ENGINE=INNODB;

CREATE TABLE asistencia(
	id int(10) not null auto_increment primary key,
	id_alumno int(10) not null,
	fecha date,
	status enum("Presente","Ausente","Permiso"),
	id_grupo int(10)
)ENGINE=INNODB;


CREATE TABLE paraescolar(
	id int(10) not null auto_increment primary key,
	nombre varchar(200) not null,
	clave varchar(10),
	id_asesor int(10)
)ENGINE=INNODB;

CREATE TABLE alumnos(
	id int(10) not null auto_increment primary key,
	nombre varchar(100) not null,
	apellido_paterno varchar(100) not null,
	apellido_materno varchar(100) not null,
	matricula int(10)
)ENGINE=INNODB;

CREATE TABLE profesor(
	id int(10) not null auto_increment primary key,
	nombre varchar(100) not null,
	apellido_paterno varchar(100) not null,
	apellido_materno varchar(100) not null,
	profesion varchar(100),
	clave varchar(10)
)ENGINE=INNODB;

CREATE TABLE personal(
	id int(10) not null auto_increment primary key,
	nombre varchar(100) not null,
	apellido_paterno varchar(100) not null,
	apellido_materno varchar(100) not null,
	ocupacion varchar(100),
	antiguedad int(10),
	clave varchar(10)
)ENGINE=INNODB;

CREATE TABLE datos(
	id int(10) not null auto_increment primary key,
	meta_id int(10) not null,
	genero enum("Masculino","Femenino"),
	fecha_nacimiento date,
	domicilio text,
	fechaingreso date,
	estado varchar(200),
	municipio varchar(255),
	localidad varchar(255),
	codigopostal int(6),
)ENGINE=INNODB;

CREATE TABLE alumnos_grados(
	id int(10) not null auto_increment primary key,
	id_alumno int(10),
	id_grado int(10),
	status enum('Activo','Reprobado','Deserto','Aprobado','Graduado')
)ENGINE=INNODB;

CREATE TABLE alumnos_trabajos(
	id int(10) not null auto_increment primary key,
	id_alumno int(10),
	id_trabajos int(10),
)ENGINE=INNODB;

CREATE TABLE periodo(
	id int(10) not null auto_increment primary key,
	tipo enum("Semestre","Cuatrimestre","Timestre","Anual") not null,
	feha_inicio date,
	fecha_fin date
)ENGINE=INNODB;

CREATE TABLE calificaciones(
	id int(10) not null auto_increment primary key
)ENGINE=INNODB;

CREATE TABLE alumnos_datos(
	id int(10) not null auto_increment primary key,
	id_alumno int(10),
	id_datos int(10)
)ENGINE=INNODB;


CREATE TABLE alumnos_paraescolar(
	id int(10) not null auto_increment primary key,
	id_alumno int(10),
	id_paraescolar int(10)
)ENGINE=INNODB;

-- operaciones
CREATE USER 'colegio'@'localhost' identified by 'colegio';
GRANT ALL PRIVILEGES ON colegio.* TO colegio@localhost;
FLUSH PRIVILEGES;