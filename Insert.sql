--diagnostic--
INSERT INTO diagnostic(id_boala, id_doctor, id_pacient,data_diagnostic) values('1B19845','3DOC5300247','5609PAC3291018',to_date('24-10-2018', 'dd-mm-yyyy'));
INSERT INTO diagnostic(id_boala, id_doctor, id_pacient,data_diagnostic) values('1B12141','5DOC1601362','5609PAC3291018',to_date('12-05-2019','dd-mm-yyyy'));
INSERT INTO diagnostic(id_boala, id_doctor, id_pacient,data_diagnostic) values('16B63058','8DOC7933219','2757PAC9110750',to_date('04-07-2016','dd-mm-yyyy'));
INSERT INTO diagnostic(id_boala, id_doctor, id_pacient,data_diagnostic) values('2B61912','10DOC5050713','8364PAC6868118',to_date('17-10-2018', 'dd-mm-yyyy'));
INSERT INTO diagnostic(id_boala, id_doctor, id_pacient,data_diagnostic) values('5B54986','1DOC9669928','7176PAC4969110',to_date('01-05-2014', 'dd-mm-yyyy'));

--internare--
INSERT INTO internare(id_pacient, id_doctor, nr_camera, data_internare, data_externare) values('2688PAC8601865','5DOC1601362',20705,
to_date('12-02-2018','dd-mm-yyyy'),to_date('03-03-2018','dd-mm-yyyy'));
INSERT INTO internare(id_pacient, id_doctor, nr_camera, data_internare, data_externare) values('2757PAC9110750','10DOC5050713',10509,
to_date('08-05-2019','dd-mm-yyyy'),to_date('10-05-2019','dd-mm-yyyy'));