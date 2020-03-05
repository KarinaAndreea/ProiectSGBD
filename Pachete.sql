CREATE OR REPLACE PACKAGE utilsPackage IS
     FUNCTION return_idDoctor(lastNameDoctor doctor.nume%type, firstNameDoctor doctor.prenume%type) RETURN  VARCHAR2;
     FUNCTION mostStaff RETURN VARCHAR2;
     FUNCTION getPacientId(last_name pacient.nume%type, first_name pacient.prenume%type, birthdate pacient.data_nastere%type) RETURN pacient.id_pacient%type;
     FUNCTION getMedicineId(p_nume_med medicament.nume_med%type) RETURN medicament.id_med%type;
     FUNCTION doctorExists(v_id_doc doctor.id_doctor%type) RETURN doctor.prenume%type;
     FUNCTION asistentaExists(v_id_asist asistenta.id_asistenta%type) RETURN asistenta.prenume%type;
END utilsPackage;
/

--pachetul pentru pacienti
CREATE OR REPLACE PACKAGE pacientPackage IS
      FUNCTION patient_appointment(doctorId doctor.id_doctor%type, idPatient programare.id_pacient%type,
      dataAppointment programare.data_programare%type, hourAppointment programare.ora%type) RETURN VARCHAR2;
       PROCEDURE hospitalization(idPacient internare.id_pacient%type, idDoctor internare.id_doctor%type, dateHs internare.data_internare%type);
      PROCEDURE getPatientDates(idPacient pacient.id_pacient%type,
      pNume OUT pacient.nume%type, pPrenume OUT pacient.prenume%type, pData OUT pacient.data_nastere%type,
      pGrupa  OUT pacient.grupa_sanguina%type, pGen OUT  pacient.gen%type);
      PROCEDURE  pacientIstoric(
	   idPacient   pacient.id_pacient%type,
	   c_boala OUT SYS_REFCURSOR);
       PROCEDURE addPacient(nume pacient.nume%type, prenume pacient.prenume%type, dataNastere pacient.data_nastere%type,
      grSanguina pacient.grupa_sanguina%type, gen pacient.gen%type);
      FUNCTION generatePacientID RETURN pacient.id_pacient%type;
      PROCEDURE deletePacient(p_id pacient.id_pacient%type);
END pacientPackage;
/

--pachet pentru personal(doctori, asistenti)
CREATE OR REPLACE PACKAGE personalPackage IS
    PROCEDURE doctor_retirement;
   -- PROCEDURE nurse_retirement;
    FUNCTION senior_doctor(idDoctor doctor.id_doctor%type) RETURN NUMBER;
    FUNCTION senior_nurse(idNurse asistenta.id_asistenta%type) RETURN NUMBER;
    FUNCTION salary_bonuses(idDoctor doctor.id_doctor%type) RETURN INT;
    PROCEDURE addDoctor(id_sect doctor.id_sectie%type, last_name doctor.nume%type, first_name doctor.prenume%type, birth_date doctor.data_nastere%type,date_emp doctor.data_angajare%type);
    PROCEDURE deleteDoctor(p_id doctor.id_doctor%type);
    PROCEDURE addAsistenta(id_sect sectie.id_sectie%type, last_name asistenta.nume%type, first_name asistenta.prenume%type, birth_date asistenta.data_nastere%type, date_emp asistenta.data_angajare%type);
    PROCEDURE deleteAsistenta(p_id asistenta.id_asistenta%type);
    PROCEDURE putDiagnosis(id_doc doctor.id_doctor%type, id_disease diagnostic.id_boala%type, id_pacient pacient.id_pacient%type);
    PROCEDURE giveMedicine(id_asist asistenta.id_asistenta%type, id_pac pacient.id_pacient%type, quantity administrare.cantitate%type, nume_med medicament.nume_med%type, data_adm administrare.DATA_ADMINISTRARII%type);
    END personalPackage ;
