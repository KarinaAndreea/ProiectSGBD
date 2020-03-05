DROP TABLE asistenta CASCADE CONSTRAINTS;
/
DROP TABLE pacient CASCADE CONSTRAINTS;
/
DROP TABLE sectie CASCADE CONSTRAINTS;
/
DROP TABLE camera CASCADE CONSTRAINTS;
/
DROP TABLE doctor CASCADE CONSTRAINTS;
/
DROP TABLE registru_boli CASCADE CONSTRAINTS;
/
DROP TABLE  boli_pe_sectie CASCADE CONSTRAINTS;
/
DROP TABLE programare CASCADE CONSTRAINTS;
/
DROP TABLE diagnostic CASCADE CONSTRAINTS;
/
DROP TABLE medicament CASCADE CONSTRAINTS;
/
DROP TABLE factura CASCADE CONSTRAINTS;
/
DROP TABLE administrare CASCADE CONSTRAINTS;
/
DROP TABLE internare CASCADE CONSTRAINTS;
/

CREATE TABLE sectie (
   id_sectie VARCHAR(30) NOT NULL,
   nume_sectie VARCHAR(255) NOT NULL,
   PRIMARY KEY(id_sectie)
)
/
CREATE TABLE asistenta (
   id_asistenta VARCHAR(30) NOT NULL,
   id_sectie VARCHAR(30) NOT NULL,
   nume VARCHAR(255) NOT NULL,
   prenume VARCHAR(255) NOT NULL,
   data_angajare DATE NOT NULL,
   data_nastere VARCHAR(10),
   PRIMARY KEY(id_asistenta),
   FOREIGN KEY (id_sectie) REFERENCES sectie (id_sectie)
)
/

CREATE TABLE doctor (
   id_doctor  VARCHAR(130) NOT NULL,
   id_sectie VARCHAR(30) NOT NULL,
   nume VARCHAR(255) NOT NULL,
   prenume VARCHAR(255) NOT NULL,
   data_nastere DATE NOT NULL,
   data_angajare DATE NOT NULL,
   PRIMARY KEY(id_doctor),
   FOREIGN KEY (id_sectie) REFERENCES sectie (id_sectie)
)

/

CREATE TABLE camera (
   nr_camera INT NOT NULL,
   id_sectie VARCHAR(30) NOT NULL,
   capacitate INT NOT NULL,
   tip_camera VARCHAR(1000),
   PRIMARY KEY(nr_camera),
   FOREIGN KEY (id_sectie) REFERENCES sectie (id_sectie)
)
/

CREATE TABLE pacient (
   id_pacient  VARCHAR(30) NOT NULL,
   nume VARCHAR(255) NOT NULL,
   prenume VARCHAR(255) NOT NULL,
   data_nastere DATE NOT NULL,
   grupa_sanguina VARCHAR(10),
   gen CHAR(2),
   PRIMARY KEY(id_pacient)
)
/

CREATE TABLE registru_boli(
  id_boala VARCHAR(30) NOT NULL,
  nume VARCHAR(200) not null,
  PRIMARY KEY(id_boala)
)
/
CREATE TABLE boli_pe_sectie(
  id_boala VARCHAR(30) NOT NULL,
  id_sectie VARCHAR(30) NOT NULL,
  FOREIGN KEY (id_boala) REFERENCES registru_boli (id_boala),
  FOREIGN KEY (id_sectie) REFERENCES sectie (id_sectie)
)
/

CREATE TABLE medicament(
  id_med VARCHAR(30) NOT NULL,
  nume_med VARCHAR(30) NOT NULL,
  cost_med NUMBER,
  PRIMARY KEY(id_med)
)
/
CREATE TABLE programare(
  id_programare INT,
  id_doctor VARCHAR(30) NOT NULL,
  id_pacient VARCHAR(30) NOT NULL,
  data_programare DATE,
  ora VARCHAR(30) NOT NULL,
  PRIMARY KEY(id_programare),
  CONSTRAINT FK_doctorID FOREIGN KEY (id_doctor) REFERENCES doctor (id_doctor),
  CONSTRAINT FK_pacientID FOREIGN KEY (id_pacient) REFERENCES pacient (id_pacient),
  CONSTRAINT no_duplicates UNIQUE (data_programare, ora)
)
/

CREATE TABLE diagnostic(
  id_diagnostic INT,
  id_boala VARCHAR(30) NOT NULL,
  id_doctor  VARCHAR(130) NOT NULL,
  id_pacient  VARCHAR(30) NOT NULL,
  data_diagnostic date,
  FOREIGN KEY (id_doctor) REFERENCES doctor (id_doctor),
  FOREIGN KEY (id_pacient) REFERENCES pacient (id_pacient),
  FOREIGN KEY (id_boala) REFERENCES registru_boli (id_boala)
)
/
CREATE TABLE factura(
  id_factura VARCHAR(30) NOT NULL,
  id_pacient VARCHAR(30) NOT NULL,
  total NUMBER NOT NULL,
  data_plata DATE,
  PRIMARY KEY(id_factura),
  FOREIGN KEY (id_pacient) REFERENCES pacient (id_pacient)
)
/
CREATE TABLE administrare(
  id_administrare INT,
  id_asistenta VARCHAR(30) NOT NULL,
  id_pacient VARCHAR(30) NOT NULL,
  id_med VARCHAR(30) NOT NULL,
  cantitate VARCHAR(30),
  data_administrarii DATE,
  PRIMARY KEY(id_administrare),
  FOREIGN KEY (id_pacient) REFERENCES pacient (id_pacient),
  FOREIGN KEY (id_asistenta) REFERENCES asistenta (id_asistenta),
  FOREIGN KEY (id_med) REFERENCES medicament (id_med)
)
/

CREATE TABLE internare
(
id_internare INT,
id_pacient VARCHAR(30) NOT NULL,
id_doctor VARCHAR(30) NOT NULL,
nr_camera INT NOT NULL,
data_internare DATE,
data_externare DATE,
PRIMARY KEY(id_internare),
foreign key (id_pacient) references pacient(id_pacient),
foreign key (id_doctor) references doctor(id_doctor)
)

