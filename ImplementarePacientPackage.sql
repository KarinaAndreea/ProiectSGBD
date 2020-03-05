CREATE OR REPLACE PACKAGE BODY pacientPackage IS

--functia de programare a unui pacient care returneaza un mesaj

  FUNCTION patient_appointment(doctorId doctor.id_doctor%type, idPatient programare.id_pacient%type,
      dataAppointment programare.data_programare%type, hourAppointment programare.ora%type) RETURN VARCHAR2 IS
     v_ore_ocupate int;
     v_ora number;
     v_minute number;
     v_ora_nou VARCHAR2(30);
     v_mesaj VARCHAR(100);
     BEGIN 
     select count(*) into v_ore_ocupate from programare where  id_doctor = doctorId  AND data_programare =  dataAppointment AND ora=hourAppointment;
     IF(v_ore_ocupate = 0 ) THEN  --doctorul nu are nici o programare in data respectiva
          INSERT INTO programare(id_doctor,id_pacient, data_programare,ora) values
     (doctorId ,idPatient , dataAppointment,hourAppointment);
      v_mesaj := 'Te-ai programat cu succes!';
--      ELSE
--      WHILE(v_ore_ocupate > 0 ) LOOP
--      v_ora := to_number(substr(hourAppointment,1,2), '99') + 1;
--      v_minute := to_number(substr(hourAppointment,1,2), '99');
--      v_ora_nou := to_char(v_ora)||':'||to_char(v_minute);
--      select count(*) into v_ore_ocupate from programare where  id_doctor = doctorId  AND data_programare =  dataAppointment AND ora=v_ora_nou;
--      END LOOP;
--      v_mesaj := 'Iti sugeram ora ' || v_ora_nou || 'in data de ' ||  dataAppointment;
--      RETURN v_ora_nou;
      END IF;
      RETURN v_mesaj;
     END patient_appointment; 
  
  --procedura pentru internarea unui pacient   
      PROCEDURE hospitalization(idPacient internare.id_pacient%type, idDoctor internare.id_doctor%type, dateHs internare.data_internare%type) IS
      v_sectie boli_pe_sectie.id_sectie%type;
      v_camera camera.nr_camera%type;
      BEGIN
      select boli_pe_sectie.id_sectie into v_sectie from boli_pe_sectie where  boli_pe_sectie.id_boala IN (
           select diagnostic.id_boala from diagnostic inner join internare on diagnostic.id_pacient = internare.id_pacient
      ); 
      SELECT nr_camera INTO v_camera FROM ( SELECT nr_camera FROM camera WHERE camera.id_sectie = v_sectie  AND camera.capacitate >=1 ORDER BY dbms_random.value )WHERE rownum = 1;
      INSERT into internare(id_pacient,id_doctor, nr_camera, data_internare) values (idPacient,idDoctor, v_camera, dateHs);
      UPDATE camera SET capacitate = capacitate - 1 where nr_camera = v_camera;
      END hospitalization; 
      
      
      --procedura pentru a lua datele despre un pacient
      PROCEDURE getPatientDates(idPacient pacient.id_pacient%type,
      pNume OUT pacient.nume%type, pPrenume OUT pacient.prenume%type, pData OUT pacient.data_nastere%type,
      pGrupa  OUT pacient.grupa_sanguina%type, pGen OUT  pacient.gen%type) IS
      BEGIN
      SELECT nume, prenume, data_nastere, grupa_sanguina, gen INTO pNume, pPrenume, pData, pGrupa, pGen FROM pacient WHERE id_pacient = idPacient;
       EXCEPTION
      WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('EXCEPTION'||SQLCODE||'ENCOUNTERED');
     pNume := 'N/A';
     pPrenume := 'N/A';
     pData :='N/A';
     pGrupa := 'N/A';
     pGen := 'N/A';
     END getPatientDates;
      
      
--istoricul bolilor
PROCEDURE  pacientIstoric(
	   idPacient  pacient.id_pacient%type,
	   c_boala OUT SYS_REFCURSOR)  IS
BEGIN
  OPEN c_boala FOR
  SELECT nume FROM registru_boli r, diagnostic d WHERE  r.id_boala = d.id_boala AND d.id_pacient = idPacient ;
END;

  --genereaza un id random pentru pacient (testeaza daca nu se gaseste deja in baza de date)
    FUNCTION generatePacientID RETURN pacient.id_pacient%type AS
      v_id pacient.id_pacient%type;
      v_temp integer;
    BEGIN
      LOOP
          v_id := FLOOR(DBMS_RANDOM.VALUE(1000,9999)) || 'PAC' || FLOOR(DBMS_RANDOM.VALUE(1000000,9999999));
           select count(*) into v_temp from pacient where id_pacient = v_id;
           exit when v_temp=0;   
      END LOOP;
      RETURN v_id;
    END;


 --adauga pacient
    PROCEDURE addPacient(nume pacient.nume%type, prenume pacient.prenume%type, dataNastere pacient.data_nastere%type,
    grSanguina pacient.grupa_sanguina%type, gen pacient.gen%type)
    AS
      id_pacient pacient.id_pacient%type;
    BEGIN
      id_pacient := generatePacientID;
      INSERT INTO pacient (id_pacient, nume, prenume, data_nastere,grupa_sanguina,gen) 
        VALUES (id_pacient,nume, prenume,dataNastere,grSanguina,gen);
      COMMIT;
    END;
    
    --sterge pacient
    PROCEDURE deletePacient(p_id pacient.id_pacient%type)
    AS
    BEGIN
      DELETE FROM pacient where id_pacient like p_id;
      COMMIT;
    END;
END pacientPackage ; 
select * from pacient;
select * from registru_boli;
select * from doctor;
INSERT INTO diagnostic(id_boala, id_doctor, id_pacient,data_diagnostic) values('1B19845','3DOC5300247','5609PAC3291018',to_date('24-10-2018', 'dd-mm-yyyy'));
INSERT INTO diagnostic(id_boala, id_doctor, id_pacient,data_diagnostic) values('1B12141','5DOC1601362','5609PAC3291018',to_date('12-02-2019','dd-mm-yyyy'));
select * from diagnostic;
set serveroutput on;
BEGIN
pacientPackage.hospitalization('7176PAC4969110','1DOC9669928', to_date('17-02-2019','dd-mm-yyyy'));
END;
