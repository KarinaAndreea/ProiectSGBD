CREATE OR REPLACE PACKAGE BODY personalPackage IS

--pensionare doctor
    PROCEDURE doctor_retirement IS
    --Created a record 
     type datee is RECORD
     (   vid                           doctor.id_doctor%type,
         vnume                         doctor.nume%type,
         vprenume                       doctor.prenume%type);
    type varr is table of datee index by pls_integer;
    var1 varr;  
    CURSOR c_doctor IS SELECT id_doctor, nume, prenume FROM doctor WHERE round(((sysdate-data_nastere)/365),0) >62 ;
    BEGIN 
     OPEN c_doctor;
    LOOP
        FETCH c_doctor BULK COLLECT INTO var1;
        EXIT WHEN c_doctor%NOTFOUND;
    END LOOP;
    CLOSE c_doctor;  
     for i in 1..var1.count
      loop                       
       dbms_output.put_line (var1 (i).vid
                            || var1 (i).vnume
                            || var1 (i).vprenume);

      end loop;
     END doctor_retirement; 
     
-- --pensionare asistenta
 --  PROCEDURE  nurse_retirement IS
--    --Created a record 
--     type datee is RECORD
--     (   vid                           asistenta.id_asistenta%type,
--         vnume                         asistenta.nume%type,
--         vprenume                      asistenta.prenume%type);
--    type varr is table of datee index by pls_integer;
--    var1 varr;  
--    CURSOR c_asistenta IS SELECT id_asistenta, nume, prenume FROM asistenta WHERE round(((sysdate-data_nastere)/365),0) >62 ;
--    BEGIN 
--     OPEN c_asistenta;
--    LOOP
--        FETCH c_asistenta BULK COLLECT INTO var1;
--        EXIT WHEN c_asistenta%NOTFOUND;
--    END LOOP;
--    CLOSE c_asistenta;  
--     for i in 1..var1.count
--      loop                       
--       dbms_output.put_line (var1 (i).vid
--                            || var1 (i).vnume
--                            || var1 (i).vprenume);
--
--      end loop;
--     END nurse_retirement; 
     
  --calculeaza vechimea unui doctor   
  FUNCTION  senior_doctor(idDoctor doctor.id_doctor%type) RETURN NUMBER IS
  v_data doctor.data_angajare%type;
  v_vechime number;
  BEGIN
  SELECT data_angajare INTO v_data  FROM doctor where id_doctor = idDoctor;
  v_vechime := round((SYSDATE - v_data)/365, 0);
  RETURN v_vechime;
  END senior_doctor;
  
  --calculeaza vechimea unei asistente
  FUNCTION senior_nurse(idNurse asistenta.id_asistenta%type) RETURN NUMBER IS
  v_data asistenta.data_angajare%type;
  v_vechime number;
  BEGIN
  SELECT data_angajare INTO v_data  FROM asistenta where id_asistenta = idNurse;
  v_vechime := round((SYSDATE - v_data)/365, 0);
  RETURN v_vechime;
  END senior_nurse;
  
  FUNCTION salary_bonuses(idDoctor doctor.id_doctor%type) RETURN INT IS
  v_varsta int;
  v_vechime_doctor int;
  v_bonusuri number;
  nr_pacienti int;
  v_data_tratare DATE;
  BEGIN
   v_bonusuri :=0;
   --scad o luna dn data curenta
   v_data_tratare := add_months( sysdate, -1 );
   DBMS_OUTPUT.PUT_LINE(v_data_tratare);
   v_vechime_doctor := personalpackage.senior_doctor(idDoctor );
   DBMS_OUTPUT.PUT_LINE(v_vechime_doctor);
   SELECT  round(((sysdate-data_nastere)/365),0) into v_varsta from doctor where id_doctor = idDoctor;
    DBMS_OUTPUT.PUT_LINE(v_varsta);
   SELECT count(id_pacient) into nr_pacienti  from diagnostic where id_doctor = idDoctor AND data_diagnostic = v_data_tratare;
   DBMS_OUTPUT.PUT_LINE(nr_pacienti);
   IF(v_vechime_doctor >10 AND v_vechime_doctor <20  ) THEN
   v_bonusuri :=v_bonusuri + 250;
   END IF;
   IF ( v_vechime_doctor >= 20 AND  v_vechime_doctor <30) THEN
   v_bonusuri := v_bonusuri + 350;
   END IF;
   IF( v_vechime_doctor >= 30 AND  v_vechime_doctor <40) THEN
   v_bonusuri := v_bonusuri + 450;
    END IF;
    IF( v_vechime_doctor >= 40 AND  v_vechime_doctor <50) THEN
   v_bonusuri := v_bonusuri + 550;
   END IF;
   IF( v_vechime_doctor >= 50 AND  v_vechime_doctor <70) THEN
   v_bonusuri := v_bonusuri + 600;
   END IF;
   IF (nr_pacienti >0) THEN
   v_bonusuri := v_bonusuri + nr_pacienti *10;
   END IF;
   RETURN v_bonusuri;
  EXCEPTION
  WHEN OTHERS THEN
  NULL;
  RAISE;
  END salary_bonuses;



    --genereaza un id random pentru doctor (testeaza daca nu se gaseste deja in baza de date
    FUNCTION generateDoctorID RETURN doctor.id_doctor%type AS
      v_id doctor.id_doctor%type;
      v_temp integer;
    BEGIN
      LOOP
           v_id := FLOOR(DBMS_RANDOM.VALUE(1,17)) || 'DOC' || FLOOR(DBMS_RANDOM.VALUE(1000000,9999999));
           select count(*) into v_temp from doctor where id_doctor = v_id;
           exit when v_temp=0;   
      END LOOP;
      RETURN v_id;
    END;
    
    --genereaza un id random pentru asistenta (testeaza daca nu se gaseste deja in baza de date
    FUNCTION generateAsistentaID RETURN asistenta.id_asistenta%type AS
      v_id asistenta.id_asistenta%type;
      v_temp integer;
    BEGIN
      LOOP
           v_id := FLOOR(DBMS_RANDOM.VALUE(1,14)) || 'ASIS' || FLOOR(DBMS_RANDOM.VALUE(1000000,9999999));
           select count(*) into v_temp from asistenta where id_asistenta = v_id;
           exit when v_temp=0;   
      END LOOP;
      RETURN v_id;
    END;

    --adauga doctor
    PROCEDURE addDoctor(id_sect doctor.id_sectie%type, last_name doctor.nume%type, first_name doctor.prenume%type, birth_date doctor.data_nastere%type, date_emp doctor.data_angajare%type)
    AS
      id_doc doctor.id_doctor%type;
    BEGIN
      id_doc := generateDoctorID;
      INSERT INTO doctor ("ID_DOCTOR", "ID_SECTIE", "NUME", "PRENUME","DATA_NASTERE","DATA_ANGAJARE") 
        VALUES (id_doc, id_sect, last_name, first_name, birth_date, date_emp);
      COMMIT;
    END;
    
    --sterge doctor
    PROCEDURE deleteDoctor(p_id doctor.id_doctor%type)
    AS
    BEGIN
      DELETE FROM doctor where id_doctor like p_id;
      COMMIT;
    END;
    
    --adauga asistenta
    PROCEDURE addAsistenta(id_sect sectie.id_sectie%type, last_name asistenta.nume%type, first_name asistenta.prenume%type, birth_date asistenta.data_nastere%type, date_emp asistenta.data_angajare%type)
    AS
      id_asist asistenta.id_asistenta%type;
    BEGIN
      id_asist := generateAsistentaID;
      INSERT INTO asistenta ("ID_ASISTENTA", "ID_SECTIE", "NUME", "PRENUME","DATA_NASTERE","DATA_ANGAJARE") 
        VALUES (id_asist, id_sect, last_name, first_name, birth_date, date_emp);
      COMMIT;
    END;
    
    --sterge asistenta
    PROCEDURE deleteAsistenta(p_id asistenta.id_asistenta%type)
    AS
    BEGIN
      DELETE FROM asistenta where id_asistenta like p_id;
      COMMIT;
    END;
    
    --pune diagnostic
    PROCEDURE putDiagnosis(id_doc doctor.id_doctor%type, id_disease diagnostic.id_boala%type, id_pacient pacient.id_pacient%type)
    AS
    BEGIN
      INSERT INTO diagnostic ("ID_BOALA", "ID_DOCTOR", "ID_PACIENT", "DATA_DIAGNOSTIC") 
        VALUES (id_disease, id_doc, id_pacient, sysdate);
      COMMIT;
    END;
    
    --admistreaza medicament
   PROCEDURE giveMedicine(id_asist asistenta.id_asistenta%type, id_pac pacient.id_pacient%type, quantity administrare.cantitate%type, nume_med medicament.nume_med%type, data_adm administrare.DATA_ADMINISTRARII%type)
    AS
    v_id medicament.id_med%type; 
    BEGIN
    SELECT id_med into v_id from medicament where nume_med = nume_med;
      INSERT INTO administrare ("ID_ASISTENTA", "ID_PACIENT", "ID_MED", "CANTITATE", "DATA_ADMINISTRARII") 
        VALUES (id_asist, id_pac,v_id, quantity, data_adm);
      COMMIT;
    END;
    
    --calculeaza cost
    
  
END personalPackage;
--
--set serveroutput on;
--   
--BEGIN
--
-- personalpackage.putdiagnosis('16DOC4161314','8364PAC6868118','4B92189');
--END;
select personalPackage.salary_bonuses('16DOC4161314') from dual;
select * from asistenta;
select * from pacient;
select * from medicament;