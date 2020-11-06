INSERT INTO grados(nombre,tipo,inicio,fin) values
("Primero","Semestre","2019-03-05","2019-03-05"),
("Segundo","Semestre","2019-03-05","2019-03-05"),
("Tercero","Semestre","2019-03-05","2019-03-05"),
("Cuarto","Semestre","2019-03-05","2019-03-05"),
("Quinto","Semestre","2019-03-05","2019-03-05"),
("Sexto","Semestre","2019-03-05","2019-03-05")
;


INSERT INTO grupos(letra,turno,id_asesor,id_grado) values
("A","Matutino",1, 1),
("B","Matutino",1, 1),
("C","Matutino",1, 1),
("A","Matutino",1, 2),
("B","Matutino",1, 2),
("C","Vespertino",1, 2),
("A","Vespertino",1, 3),
("B","Vespertino",1, 3),
("C","Vespertino",1, 3)
;

INSERT INTO  materias(nombre,clave,id_maestro) values
("Física I","009",1),
("Física II","009",1),
("Física III","009",1),
("Matemática I","009",2),
("Matemática II","009",2),
("Matemática III","009",2),
("Química I","009",3),
("Química II","009",3),
("Química III","009",3),
("Biología I","009",4),
("Biología II","009",4),
("Biología III","009",4),
("Historia I","009",5),
("Historia II","009",5),
("Historia III","009",5),
("Geografía I","009",6),
("Geografía II","009",6),
("Geografía III","009",6),
("Artes I ","009",7),
("Artes II","009",7),
("Artes III","009",7),
("Íngles I","009",8),
("Íngles II","009",8),
("Íngles III","009",8)
;

INSERT INTO documentos(nombre,tipo,descripcion) values
("CURP","Copia","Clave unica de registro de poblacion"),
("Acta de nacimiento","Original",""),
("Acta de nacimiento","Copia",""),
("6 Fotografias tamaño infantil","Original","Para la credencial y otros documentos"),
("Constancia de estudios","Original","De la escuela anterior"),
("Constancia de estudios","Copia","De la escuela anterior"),
("Carta de buena conducta","Original","Expedida por la institucion anterior"),
("Comprobante de docmicilio","Original","Lugar de radicacion"),
("Recibo de incripcion","Original","Pago de la couta")
;


-- operaciones
CREATE USER 'colegio'@'localhost' identified by 'colegio';
GRANT ALL PRIVILEGES ON colegio.* TO colegio@localhost;
FLUSH PRIVILEGES;