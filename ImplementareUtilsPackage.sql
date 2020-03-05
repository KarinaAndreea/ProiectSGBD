CREATE OR REPLACE PACKAGE BODY utilsPackage IS

--returneaza id-urile doctorilor care au numele si prenumele dateca parametru
FUNCTION return_idDoctor(lastNameDoctor  doctor.nume%type, firstNameDoctor doctor.prenume%type) RETURN  VARCHAR2 IS
    codDoctor VARCHAR(130);
    BEGIN
    SELECT id_doctor INTO codDoctor FROM doctor WHERE nume= lastNameDoctor  AND prenume = firstNameDoctor;
    RETURN codDoctor;
    END return_idDoctor;

--returneaza sectia cu cel mai mult personal    
    FUNCTION mostStaff RETURN VARCHAR2 IS
    type personal is RECORD (vid  sectie.id_sectie%type, v_numar number);
    type varr is table of personal index by pls_integer;
    var1 personal;
    TYPE vec IS VARRAY(1000) OF varchar2(255);
    lista_sectie vec := vec('Pediatrie','Cardiologie','Oncologie','Dermatologie','ORL', 'Oftalmologie','Gastoentero','Infectioase','Ginecologie','Pneumologie','Neurologie','Chirurgie generala','Ortopedie','Endocrinologie', 'Alergologie','Nefrologie');
    v_id_sec sectie.id_sectie%type;
    v_asis number;
    v_doc number;
    maxx number := 0;
    v_nume_sect sectie.nume_sectie%type;
    v_denumire sectie.id_sectie%type;
    BEGIN 
      FOR v_i IN 1..16 LOOP
      SELECT id_sectie INTO v_id_sec FROM sectie WHERE nume_sectie = lista_sectie(v_i);
        SELECT COUNT(id_asistenta) INTO v_asis FROM  asistenta WHERE id_sectie = v_id_sec;
        SELECT COUNT(id_doctor) INTO v_doc FROM  doctor WHERE id_sectie = v_id_sec;
        var1.vid := v_id_sec;
        var1.v_numar := v_asis + v_doc;
      END LOOP;
      FOR v_i IN 1..16 LOOP
      IF(var1.v_numar > maxx) THEN
      maxx := var1.v_numar;
      v_denumire := var1.vid; 
      END IF;
   END LOOP; 
      select nume_sectie into v_nume_sect from sectie where id_sectie = v_denumire;
      RETURN v_nume_sect;
    END mostStaff;
    
  --returneaza id-ul pacientului dupa nume,prenume si data nasterii
  FUNCTION getPacientId(last_name pacient.nume%type, first_name pacient.prenume%type, birthdate pacient.data_nastere%type) RETURN pacient.id_pacient%type
  AS
    id_pac pacient.id_pacient%type;
  BEGIN
    select id_pacient into id_pac from pacient where nume = last_name and prenume = first_name and data_nastere = birthdate;
    return id_pac;
  END;
  
  --id-ul medicamentului dupa nume
  FUNCTION getMedicineId(p_nume_med medicament.nume_med%type) RETURN medicament.id_med%type
  AS
    id_med medicament.id_med%type;
  BEGIN
    select id_med into id_med from medicament where nume_med = p_nume_med;
    return id_med;
  END;
  
     --verifica daca doctor se afla in baza de date
  FUNCTION doctorExists(v_id_doc doctor.id_doctor%type) RETURN doctor.prenume%type
  AS
    mess varchar2(200);
    v_prenume doctor.prenume%type;
    counter INTEGER;
  BEGIN
    SELECT prenume into v_prenume FROM doctor WHERE id_doctor = v_id_doc;
    mess := v_prenume;
    return mess;
  EXCEPTION
  WHEN no_data_found THEN
    SELECT COUNT(*) INTO counter FROM doctor WHERE id_doctor = v_id_doc;
    IF counter = 0 THEN
      mess   := 'failure';
    END IF;
  RETURN mess;
  END;
  
  --verifica daca asistenta se afla in baza de date
  FUNCTION asistentaExists(v_id_asist asistenta.id_asistenta%type) RETURN asistenta.prenume%type
  AS
    mess varchar2(200);
    v_prenume asistenta.prenume%type;
    counter INTEGER;
  BEGIN
    SELECT prenume into v_prenume FROM asistenta WHERE id_asistenta = v_id_asist;
    mess := v_prenume;
    return mess;
  EXCEPTION
  WHEN no_data_found THEN
    SELECT COUNT(*) INTO counter FROM asistenta WHERE id_asistenta = v_id_asist;
    IF counter = 0 THEN
      mess   := 'failure';
    END IF;
  RETURN mess;
  END;
END utilsPackage;
select sysdate from dual;
select * from doctor;
select * from pacient;
select * from programare;
