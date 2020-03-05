DROP SEQUENCE autoincrement_seq;
/
CREATE SEQUENCE autoincrement_seq START WITH 1 INCREMENT  BY 1;
/
CREATE OR REPLACE TRIGGER sectie_trigger
BEFORE INSERT ON  sectie
FOR EACH ROW
BEGIN
  IF :new.id_sectie IS NULL THEN
    SELECT autoincrement_seq.nextval INTO :new.id_sectie FROM dual;
  END IF;
END;
/
DROP SEQUENCE programare_seq;
/
CREATE SEQUENCE programare_seq START WITH 1 INCREMENT  BY 1;
/
CREATE OR REPLACE TRIGGER programare_trigger
BEFORE INSERT ON programare
FOR EACH ROW
BEGIN
  IF :new.id_programare IS NULL THEN
    SELECT programare_seq.nextval INTO :new.id_programare FROM dual;
  END IF;
END;
/
DROP SEQUENCE diagnostic_seq;
/
CREATE SEQUENCE diagnostic_seq START WITH 1 INCREMENT BY 1;
/
CREATE OR REPLACE TRIGGER  diagnostic_trigger
BEFORE INSERT ON diagnostic
FOR EACH ROW
BEGIN
  IF :new.id_diagnostic IS NULL THEN
    SELECT diagnostic_seq.nextval INTO :new.id_diagnostic FROM dual;
  END IF;
END;
/
DROP SEQUENCE administrare_seq;
/
CREATE SEQUENCE administrare_seq START WITH 1 INCREMENT BY 1;
/
CREATE OR REPLACE TRIGGER administrare_trigger
BEFORE INSERT ON administrare
FOR EACH ROW
BEGIN
  IF :new.id_administrare IS NULL THEN
    SELECT administrare_seq.nextval INTO :new.id_administrare FROM dual;
  END IF;
END;
/
DROP SEQUENCE internare_seq;
/
CREATE SEQUENCE internare_seq START WITH  1 INCREMENT BY 1;
/
CREATE OR REPLACE TRIGGER internare_trigger
BEFORE INSERT ON internare
FOR EACH ROW
BEGIN
  IF :new.id_internare IS NULL THEN
    SELECT internare_seq.nextval INTO :new.id_internare FROM dual;
  END IF;
END;