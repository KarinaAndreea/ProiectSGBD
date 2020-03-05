SET SERVEROUTPUT ON;
DECLARE
  TYPE varr IS VARRAY(1000) OF varchar2(255);
  /*431 de nume*/
   lista_prenume_asistent varr := varr(
'Abigael','Ada','Adaline','Abel','Adela','Adi','Adina','Adriaens','Adrian','Agata','Agnes','Albert','Alex','Alexandra','Alfred','Alin','Alina','Alison','Amanda','Amelia','Ami','Ana','Anabel','Anastasia','Andi','Andrei','Angele','Anica','Anna-Diana','Anna-Maria','Anne-Corinne','Antonia','Antonie','Antonina','Appolonia','April','Arabel','Arabela','Athena','Augustine','Aurel','Aurora','Austin','Ava','Aron',
'Bob','Barbara','Beatrice','Beatrix','Bethany','Betty','Bianca','Bibi','Bili',
'Calida','Calla','Cami','Camila','Candace','Candi','Cara','Carlie','Cail', 'Carlin','Carmel','Carmela','Carmen','Carolin','Carolina','Casandra','Catalin','Caterina','Cecelia','Cecil','Cecilia',
'Celia','Celie','Chad','Chloe','Chloette','Chloris','Chris','Chrisitan','Christi','Christian','Cindie','Clair','Clara','Claude','Cleo','Cleopatra','Codi','Corina',
'Dahlia','Daisey','Dalia','Dana','Danella','Dani','Danya','Daphne','Darcey','Daria','Darla','Daron','Debbi','Dan','Danut','Dorel','Deborah','Delia','Diana','Dony','Dominic','David','Denisa',
'Eada','Eba','Eddi','Edi','Editha','Ediva','Eimile','Ekaterina','Elberta','Eleen','Elena','Eleonora','Elfreda','Elga','Elisa','Elisabeth','Eliza','Elizabet','Ella','Elly',
'Elsa','Elvera','Elvina','Elvira','Ema','Emily','Emmi','Enrica','Erin','Estella','Eva','Ezmeralda',
'Fania','Farah','Felicia','Felisha','Ferdinanda','Ferdinand','Fernanda','Filide','Filip','Fiona','Flora','Francesca','Frank','Fred','Frederica',
'Gabbi','Gabriel','Gabriela','Gail','Gennifer','George','Georgiana','Georgeta','Georgia','Gerald','Geri','Giana','Geanina','Gianna','Gigel','Gigi','Gheorghe','Gloria','Greta','Gretel','Glori','Gloriana',
'Giulian','Heather','Heda','Heidi','Helen-Elizabeth','Helena','Hendrika','Herminia','Hilde',
'Idalia','Ileana','Ilsa','Ina','Indira','Iolanda','Ira','Irena','Irina','Iris','Irma','Isabel','Isabela','Ileonora','Isis','Iustin','Iustina',
'Jackelyn','Jacki','Jackie','Jade','Jan','Jana','Jane','Janeta','Jasmin','Jasmina','Jaymee','Jean','Jemmy','Jenifer','Jessica','Jojo','Jony','Julian','Julia','Julie','Justina','Justin',
'Kacie','Kaila','Kassandra','Kate','Katerina','Katy','Konstance','Kym','Kora','Kristin',
'Lacey','Lana','Liam','Lanna','Laura','Lari','Larisa','Leonor','Leonora','Lili','Liza','Lena','Liliana','Linnet','Lara','Larisa','Luiza','Lidia','Lavinia','Lu','Lucia','Lorena',
'Mabel','Madalena','Madalin','Madalina','Maegan','Magda','Magdalen','Magdalena','Maggie','Mariuas','Marian','Maria','Marcel','Mariuca','Matei','Marta','Mihai','Mihaela','Mihnea','Mirabela','Matilda',
'Mia','Malina','Malena','Miruna','Marta','Mara','Margot','Misha','Martin','Martina','Manuel','Manuela','Maurice','Mona','Monica',
'Nadeen','Nadia','Naomi','Natalie','Natasha','Natalia','Nastasia','Nerta','Nichol','Nicola','Nicolae','Nicoleta','Niki','Nini','Nina','Noe','Noel','Noella','Nora','Noah',
'Octavia','Odele','Odelia','Ofelia','Olimpia','Octiavian','Olga','Olivia','Oliver','Ophelia','Oriana','Pamela','Petru','Peter','Paolina','Patricia','Paula','Paul','Pauli',
'Penelope','Pavel','Petra','Petronel','Petronela','Phil','Pia','Polly','Priscilla',
'Rachael','Roxana','Rafael','Ramona','Raquel','Rebbecca','Reina','Rica','Rita','Relu','Radu','Roberta','Robin','Romona','Rosalinda','Rosie',
'Sabina','Sabin','Sandra','Sabrina','Sam','Samantha','Samuel','Samara','Sara','Sarah','Scarlet','Selena','Selina','Serena','Sofia','Sonia','Stacey','Stefan','Stefana','Stefania','Steve','Sue',
'Suzy','Suzana','Silviu','Silvia','Toby','Toto','Tania','Tamara','Tani','Tatiana','Teodora','Teresa','Theo','Tiffany','Tom','Tibi','Thomas'
,'Ursula','Valaria','Valentina','Valentin','Valli','Vanessa','Vania','Velma','Veronica','Viorel','Viorica','Victoria','Victor','Vivien','Wanda','Wenona','Xaviera','Will','Xena',
'Xenia','Yalonda','Yasmeen','Yasmin','Yelena','Zabrina','Zelda','Zoe');
/*146*/
 lista_nume_asistent varr := varr('Afloroaei','Sima','Baba','Onofrei','Comanescu','Popa','Popescu','Ionescu','Pop','Radu','Dumitru','Gheorghe','Stoica','Stan','Munteanu','Constantin','Andrei','Matei','Marin','Mihai','Ciobanu','Serban','Stefan','Lazar','Florea','Dumitrescu','Amariutei','Agafitei','Barbu','Barsan','Stanciu','Vasile','Ilie','Cristea','Toma','Moldovan','Oprea','Dinu','Tudor','Ionita','Ungureanu','Constantinescu','Georgescu','Balan','Neagu','Dragonir','Badea','Cojocaru','Cojocariu','Sandu','Mocanu','Enache','Nagy','Coman','Craciun','Lupu','Lupescu','Muresan','Vlad','Dobre','Tanase','Avram','Radulescu','Iordache','Grigore','Lungu','Ivan','Nicolae','Szabo','Bucur','Manea','Ene','Marinescu','Alexandru','Petre','Albu','Voicu','Preda','Iancu','Dragan','Olteanu','Stoian','David','Petrescu','Roman','Iacob','Filip','Diaconu','Costea','Baciu','Marcu','Rosu','Nistor','Kovacs','Pavel','Cretu','Stanescu','Anton','Simion','Luca','Nita','Calin','Nedelcu','Rotaru','Bogdan','Suciu','Crisan','Rudac','Ceausu','Grecu','Hurmuzache','Ichim','Anghelescu','Ababei','Dalca','Petran','Petrescu','Grosu','Florescu','Enachi','Badarau','Bunea','Voicu','Turcu','Stoleru','Burlacu','Burloiu','Bursuc','Butacu','Bute','Buza','Calancea','Vrabie','Vulpescu','Zamosteanu','Zazuleac','Ursu','Bisoc','Caia','Jescu','Cocuz','Butnaru','Olariu','Baetu','Filote','Olaru');
 lista_lname varr := varr('Morrison','Bennett','Brady','Coleman','Ford','Rios','Poole','Walters','Guerrero','Flores','Lee','Miller','Francis','French','Martin','Sherman','Graham','Garner','Maxwell','Estrada','Morales','Owen','Lawson','Benson','Hammond','Greene','Lamb','Castro','Perkins','Hughes','Barnes','Mckenzie','Watts','Anderson','Gregory','Alvarez','Yates','Fowler','Wilkins','Warren','Burns','Boone','Goodwin','Porter','Wheeler','Brock','Howard','Barton','Zimmerman','Hodges','Massey','Norton','Gibson','Strickland','Bell','Robinson','Graves','Craig','Howell','Hunt','Malone','Richards','Murphy','Nash','West','Lloyd','Paul','Fuller','Holloway','Goodman','Ryan','Reeves','Cole','Parker','Cohen','Ingram','Scott','Byrd','Hart','Casey','Franklin','Morgan','Mclaughlin','Lyons','Montgomery','Stephens','Glover','Roberts','Erickson','Allison','Ramos','Holland','Hawkins','Williamson','Edwards','Mccoy','Swanson','Delgado','Ellis','Collins','Boyd','Myers','Nichols','Wood','Rice','Wolfe','Stokes','Ortiz','Haynes','Mccormick','Norman','Knight','Patton','Gomez','Chandler','Henry','Tucker','Kennedy','Day','Gray','Banks','Allen','Clark','Reed','Oliver','Price','Simon','Fox','Copeland','Harrington','Brooks','Ruiz','Taylor','Griffith','Jordan','Ballard','Clarke','Kelley','Waters','Russell','Luna','Becker','Nguyen','Norris','Munoz','Wilson','Todd','Olson','George','Rivera','Williams','White','Torres','Brewer','Mendoza','Alexander','Joseph','Mason','Webster','Higgins','Barnett','Harrison','Bailey','Underwood','Robertson','Watkins','Stone','Quinn','Hicks','Holt','Burgess','Hoffman','Adams','Stevens','Chavez','Wilkerson','Bryan','Sandoval','Greer','Soto','Walsh','Wagner','Vega','Schmidt','Figueroa','Thornton','Diaz','Hamilton','Peters','Sims','Duncan','Rhodes','Carter','Alvarado','Powell','Burton','Osborne','Blake','Palmer','Moore','Dawson','Henderson','Lowe','Peterson','Sanders','Shelton','Lopez','Mckinney','Ferguson','Pierce','Neal','Abbott','Keller','Silva','Stewart','Griffin','Lynch','Bush','Nelson','Townsend','Butler','Webb','Spencer','Mack','Frazier','Gutierrez','Moody','Carroll','Bowman','Little','Guzman','Martinez','Larson','Clayton','Perez','Colon','Daniel','Adkins','Turner','Smith','Tate','Mccarthy','Douglas','Riley','Mills','Briggs','Collier','Perry','Murray','Mullins','Vasquez','Wright','Pearson','Cooper','Lewis','Foster','Mann','Santiago','Santos','Cain','Rodgers','Lambert','Fitzgerald','Hudson','Fletcher','Jennings','Schultz','Bowen','Schwartz','Rose','Hopkins','Doyle','Carr','Saunders','Meyer','Cruz','Roy','Baker','Simpson','Valdez','Newton','Caldwell','Parks','Obrien','Johnson','Weaver','Steele','Thomas','Fisher','Walker','Johnston','Grant','Watson','Reid','Gill','Carson','Simmons','Barrett','Holmes','Wells','Mcdonald','Garza','Cook','Bridges','Cox','Leonard','Klein','Lawrence','Rowe','Quinnteles','Aguilar','Willis','Harmon','Long','Davis','Summers','Davidson','Baldwin','Harper','Patrick','Sanchez','Gonzalez','Lindsey','Miles','Wise','Roberson','Bass','Mcgee','Powers','Richardson','Nunez','Hogan','Gordon','Singleton','Harvey','Wade','Welch','Kelly','Houston','Sutton','Love','Bradley','Jimenez','Floyd','Ortega','Black','Ball','Crawford','Bowers','Hernandez','Tran','Brown','Armstrong','Gilbert','Cummings','Snyder','Hayes','Padilla','Dixon','Hampton','Mathis','Medina','Jenkins','Hill','Jacobs','King','Jefferson','Conner','Chapman','Terry','Christensen','Maldonado','Stanley','Gardner','Fields','Ward','Hunter','Ross','Cannon','Sharp','Manning','Newman','Mitchell','Morris','Morton','Hansen','Ramsey','Garcia','Moss','Vargas','Hale','Wallace','Dennis','Fernandez','Thompson','Huff','Park','Walton','Kim','Chambers');
 lista_fname varr := varr('Bonnie','Louise','Janet','Anna','Jane','Ruth','Ashley','Tina','Joyce','Stephanie','Laura','Virginia','Alice','Margaret','Lori','Sharon','Anne','Emily','Andrea','Elizabeth','Sarah','Rebecca','Ann','Brenda','Jessica','Paula','Jennifer','Diana','Cheryl','Lois','Teresa','Susan','Evelyn','Karen','Wanda','Gloria','Carol','Nicole','Phyllis','Martha','Carolyn','Denise','Heather','Theresa','Marie','Sara','Doris','Cynthia','Joan','Sandra','Kathryn','Julie','Mildred','Jacqueline','Donna','Rose','Dorothy','Debra','Rachel','Diane','Irene','Helen','Jean','Lillian','Patricia','Norma','Kelly','Janice','Frances','Annie','Christine','Michelle','Beverly','Catherine','Melissa','Judith','Lisa','Pamela','Tammy','Kathy','Deborah','Linda','Judy','Kathleen','Angela','Christina','Katherine','Marilyn','Shirley','Maria','Ruby','Mary','Kimberly','Barbara','Nancy','Betty','Amy','Julia','Amanda', 'Alonzo','Lorenzo','Tommy','Levi','Dustin','Angelo','Matthew','Johnny','Andres','Jeffrey','Samuel','Alberto','Leland','Wallace','Loren','Gustavo','Virgil','Dale','Jaime','Gerard','Carlos','Jason','Roy','Harvey','Willard','Rick','Stuart','Cody','Eduardo','Gerardo','Curtis','Aubrey','Sammy','Gene','Toby','Winston','Tony','Charlie','Wm','Joseph','Marty','Johnnie','Earl','Brad','Jonathan','Rex','Cornelius','Eddie','Cesar','Keith','Louis','Micheal','Nicholas','Dwight','Dave','Rodolfo','Warren','Raymond','Shannon','Emmett','George','Moses','Preston','Guillermo','Andrew','Ignacio','Leslie','Ian','Kirk','Amos','Bert','Ronnie','Timmy','Manuel','Tim','Gregory','Mario','Earnest','Luis','Lawrence','Eric','Miguel','Rudy','Albert','Wayne','Colin','Larry','Israel','Salvador','Jorge','Thomas','Alton','Pat','Malcolm','Randolph','Nicolas','Marshall','Francis','Tyrone','Lewis');
 lista_sectie varr := varr('Pediatrie','Cardiologie','Oncologie','Dermatologie','ORL', 'Oftalmologie','Gastoentero','Infectioase','Ginecologie','Pneumologie','Neurologie','Chirurgie generala','Ortopedie','Endocrinologie', 'Alergologie','Nefrologie');
 lista_tip varr:= varr('Categorie1','Categorie2');
   v_nume VARCHAR2(255);
   v_prenume VARCHAR2(255);
   v_varsta date;
   v_data_angajare date;
   v_data_nastere date ;
   v_data_nastere_julian date;
   v_denumire_sectie VARCHAR2(100);
   v_numar_camera VARCHAR(1000);
   v_tip_camera VARCHAR(1000);
   v_capacitate_camera INT;
   v_id VARCHAR(200);
   v_temp NUMBER;
   v_temp1 INT;
   v_temp3 VARCHAR(100);
   v_temp2 VARCHAR(100);
   v_temp_id VARCHAR(100);
   v_salariu NUMBER;
   v_flag VARCHAR(20);
   v_data_temp VARCHAR(10);
   
  type vector is varray(10000) of varchar2(200);
  lista_gen vector := vector('M','F');
  lista_gr_sanguina vector := vector ('A+','A-','B+','B-','AB+','AB-','0+','0-');
  lista_nume vector := vector('Ababei','Acasandrei','Adascalitei','Afanasie','Agafitei','Agape','Aioanei','Alexandrescu','Alexandru','Alexe','Alexii','Amarghioalei','Ambroci','Andonesei','Andrei','Andrian','Andrici','Andronic','Andros','Anghelina','Anita','Antochi','Antonie','Apetrei','Apostol','Arhip','Arhire','Arteni','Arvinte','Asaftei','Asofiei','Aungurenci','Avadanei','Avram','Babei','Baciu','Baetu','Balan','Balica','Banu','Barbieru','Barzu','Bazgan','Bejan','Bejenaru','Belcescu','Belciuganu','Benchea','Bilan','Birsanu','Bivol','Bizu','Boca','Bodnar','Boistean','Borcan','Bordeianu','Botezatu','Bradea','Braescu','Budaca','Bulai','Bulbuc-aioanei','Burlacu','Burloiu','Bursuc','Butacu','Bute','Buza','Calancea','Calinescu','Capusneanu','Caraiman','Carbune','Carp','Catana','Catiru','Catonoiu','Cazacu','Cazamir','Cebere','Cehan','Cernescu','Chelaru','Chelmu','Chelmus','Chibici','Chicos','Chilaboc','Chile','Chiriac','Chirila','Chistol','Chitic','Chmilevski','Cimpoesu','Ciobanu','Ciobotaru','Ciocoiu','Ciofu','Ciornei','Citea','Ciucanu','Clatinici','Clim','Cobuz','Coca','Cojocariu','Cojocaru','Condurache','Corciu','Corduneanu','Corfu','Corneanu','Corodescu','Coseru','Cosnita','Costan','Covatariu','Cozma','Cozmiuc','Craciunas','Crainiceanu','Creanga','Cretu','Cristea','Crucerescu','Cumpata','Curca','Cusmuliuc','Damian','Damoc','Daneliuc','Daniel','Danila','Darie','Dascalescu','Dascalu','Diaconu','Dima','Dimache','Dinu','Dobos','Dochitei','Dochitoiu','Dodan','Dogaru','Domnaru','Dorneanu','Dragan','Dragoman','Dragomir','Dragomirescu','Duceac','Dudau','Durnea','Edu','Eduard','Eusebiu','Fedeles','Ferestraoaru','Filibiu','Filimon','Filip','Florescu','Folvaiter','Frumosu','Frunza','Galatanu','Gavrilita','Gavriliuc','Gavrilovici','Gherase','Gherca','Ghergu','Gherman','Ghibirdic','Giosanu','Gitlan','Giurgila','Glodeanu','Goldan','Gorgan','Grama','Grigore','Grigoriu','Grosu','Grozavu','Gurau','Haba','Harabula','Hardon','Harpa','Herdes','Herscovici','Hociung','Hodoreanu','Hostiuc','Huma','Hutanu','Huzum','Iacob','Iacobuta','Iancu','Ichim','Iftimesei','Ilie','Insuratelu','Ionesei','Ionesi','Ionita','Iordache','Iordache-tiroiu','Iordan','Iosub','Iovu','Irimia','Ivascu','Jecu','Jitariuc','Jitca','Joldescu','Juravle','Larion','Lates','Latu','Lazar','Leleu','Leon','Leonte','Leuciuc','Leustean','Luca','Lucaci','Lucasi','Luncasu','Lungeanu','Lungu','Lupascu','Lupu','Macariu','Macoveschi','Maftei','Maganu','Mangalagiu','Manolache','Manole','Marcu','Marinov','Martinas','Marton','Mataca','Matcovici','Matei','Maties','Matrana','Maxim','Mazareanu','Mazilu','Mazur','Melniciuc-puica','Micu','Mihaela','Mihai','Mihaila','Mihailescu','Mihalachi','Mihalcea','Mihociu','Milut','Minea','Minghel','Minuti','Miron','Mitan','Moisa','Moniry-abyaneh','Morarescu','Morosanu','Moscu','Motrescu','Motroi','Munteanu','Murarasu','Musca','Mutescu','Nastaca','Nechita','Neghina','Negrus','Negruser','Negrutu','Nemtoc','Netedu','Nica','Nicu','Oana','Olanuta','Olarasu','Olariu','Olaru','Onu','Opariuc','Oprea','Ostafe','Otrocol','Palihovici','Pantiru','Pantiruc','Paparuz','Pascaru','Patachi','Patras','Patriche','Perciun','Perju','Petcu','Pila','Pintilie','Piriu','Platon','Plugariu','Podaru','Poenariu','Pojar','Popa','Popescu','Popovici','Poputoaia','Postolache','Predoaia','Prisecaru','Procop','Prodan','Puiu','Purice','Rachieru','Razvan','Reut','Riscanu','Riza','Robu','Roman','Romanescu','Romaniuc','Rosca','Rusu','Samson','Sandu','Sandulache','Sava','Savescu','Schifirnet','Scortanu','Scurtu','Sfarghiu','Silitra','Simiganoschi','Simion','Simionescu','Simionesei','Simon','Sitaru','Sleghel','Sofian','Soficu','Sparhat','Spiridon','Stan','Stavarache','Stefan','Stefanita','Stingaciu','Stiufliuc','Stoian','Stoica','Stoleru','Stolniceanu','Stolnicu','Strainu','Strimtu','Suhani','Tabusca','Talif','Tanasa','Teclici','Teodorescu','Tesu','Tifrea','Timofte','Tincu','Tirpescu','Toader','Tofan','Toma','Toncu','Trifan','Tudosa','Tudose','Tuduri','Tuiu','Turcu','Ulinici','Unghianu','Ungureanu','Ursache','Ursachi','Urse','Ursu','Varlan','Varteniuc','Varvaroi','Vasilache','Vasiliu','Ventaniuc','Vicol','Vidru','Vinatoru','Vlad','Voaides','Vrabie','Vulpescu','Zamosteanu','Zazuleac');
  lista_prenume_fete vector := vector('Adina','Alexandra','Alina','Ana','Anca','Anda','Andra','Andreea','Andreia','Antonia','Bianca','Camelia','Claudia','Codrina','Cristina','Daniela','Daria','Delia','Denisa','Diana','Ecaterina','Elena','Eleonora','Elisa','Ema','Emanuela','Emma','Gabriela','Georgiana','Ileana','Ilona','Ioana','Iolanda','Irina','Iulia','Iuliana','Larisa','Laura','Loredana','Madalina','Malina','Manuela','Maria','Mihaela','Mirela','Monica','Oana','Paula','Petruta','Raluca','Sabina','Sanziana','Simina','Simona','Stefana','Stefania','Tamara','Teodora','Theodora','Vasilica','Xena');
  lista_prenume_baieti vector := vector('Adrian','Alex','Alexandru','Alin','Andreas','Andrei','Aurelian','Beniamin','Bogdan','Camil','Catalin','Cezar','Ciprian','Claudiu','Codrin','Constantin','Corneliu','Cosmin','Costel','Cristian','Damian','Dan','Daniel','Danut','Darius','Denise','Dimitrie','Dorian','Dorin','Dragos','Dumitru','Eduard','Elvis','Emil','Ervin','Eugen','Eusebiu','Fabian','Filip','Florian','Florin','Gabriel','George','Gheorghe','Giani','Giulio','Iaroslav','Ilie','Ioan','Ion','Ionel','Ionut','Iosif','Irinel','Iulian','Iustin','Laurentiu','Liviu','Lucian','Marian','Marius','Matei','Mihai','Mihail','Nicolae','Nicu','Nicusor','Octavian','Ovidiu','Paul','Petru','Petrut','Radu','Rares','Razvan','Richard','Robert','Roland','Rolland','Romanescu','Sabin','Samuel','Sebastian','Sergiu','Silviu','Stefan','Teodor','Teofil','Theodor','Tudor','Vadim','Valentin','Valeriu','Vasile','Victor','Vlad','Vladimir','Vladut');
  v_prenume_pacient VARCHAR(30);
  v_nume_pacient VARCHAR(30);
  v_gen VARCHAR(6);
  v_gr_sanguina VARCHAR(6);
  
  lista_boli_pediatrie varr := varr('Alergia la proteinele din ou', 'Alergiile la copil', 'Astmul la copii', 'Balbism sau balbaiala', 'Boala Canavan', 'Bronsiolita la copil', 'Buza de iepure sau cheiloschizis', 'Constipatia la copii', 'Defect septal atrial', 'Defect septal ventricular', 'Dermatita atopica a copilului sau eczema', 'Dermatita de scutec', 'Despicatura valului palatin, palatoschizis sau gura de lup', 'Deviatia de sept nazal', 'Diabet zaharat insulino-dependent la copil', 'Diabetul zaharat non-insulino-dependent la copil', 'Dislexia', 'Encoprezis sau tulburarea instalarii controlului sfincterului anal', 'Enurezis nocturn, incontinenta urinara nocturna sau udarea patului', 'Faringita streptococica acuta', 'Fenilcetonuria', 'Gripa', 'Hernia ombilicala', 'Hidrocefalia congenitala', 'Hipoacuzia sau auzul slab la copii', 'Icterul fiziologic al nou-nascutului', 'Limba fixata sau anchiloglosia', 'Nanism hipofizar', 'Obezitatea juvenila', 'Oreion sau parotidita epidemica', 'Osteoporoza juvenila sau osteoporoza copiilor', 'Otita medie sau inflamatia urechii medii', 'Paralizia cerebrala', 'Pediculoza si paduchii', 'Persistenta canalului arterial', 'Piciorul stramb congenital sau piciorul in varus equin', 'Returul venos pulmonar sau intoarcerea venoasa total anormala', 'Schizofrenia la copil', 'Sindromul copilului zgaltait', 'Sindromul Down sau mongolism');
  lista_boli_cardiologie varr := varr('Angina pectorala', 'Ateroscleroza', 'Atrezia de tricuspida', 'Bloc cardiac grad 2 (Bloc atrio-ventricular grad 2)', 'Bloc cardiac grad 3 (Bloc atrio-ventricular grad 3)', 'Bloc cardiac gradul 1', 'Bloc de ramura stang si drept', 'Blocul sinoatrial', 'Bradicardia sinusala', 'Coarctatia de aorta', 'Defect septal atrial', 'Defect septal ventricular', 'Disfunctia nodulului sinusal (Sindromul de sinus bolnav, Boala nodului sinusal)', 'Extrasistola atriala', 'Extrasistola ventriculara', 'Fibrilatia atriala', 'Fibrilatia ventriculara', 'Flutter atrial', 'Hipertensiunea arteriala', 'Hipotensiunea arteriala', 'Infarct miocardic (Atac de cord)', 'Insuficienta cardiaca', 'Insuficienta mitrala de grad 1', 'Malformatii cardiace congenitale', 'Persistenta canalului arterial', 'Prolapsul valvei mitrale', 'Returul venos pulmonar sau intoarcerea venoasa total anormala', 'Sindromul Adam-Stokes', 'Sindromul hipoplaziei inimii stangi', 'Sindromul Q-T lung', 'Sindromul WPW ( Wolff-Parkinson-White)', 'Stenoza aortica', 'Stenoza mitrala	Stenoza pulmonara', 'Tahicardia sinusala', 'Tahicardia supraventriculara', 'Tahicardia ventriculara	Tetralogia Fallot', 'Transpozitia vaselor mari', 'Trunchiul arterial comun');
  lista_boli_oncologie varr := varr('Cancer de col uterin', 'Cancer ovarian', 'Cancerul de endometru', 'Cancerul de san sau cancerul mamar', 'Cancerul laringian', 'Cancerul vaginal', 'Neurinomul acustic, schwanomul vestibular sau tumora de unghi cerebelo-pontin', 'Retinoblastomul', 'Tumori cerebrale');
  lista_boli_dermatologie varr := varr('Acneea', 'Albinismul', 'Alunite (nevii melanocitari)', 'Arsurile solare', 'Caderea parului', 'Cancer de piele', 'Cancerul labial sau al buzelor', 'Dermatita atopica', 'Dermatita seboreica', 'Eczeme', 'Foliculita', 'Furuncul', 'Hemangiomul cutanat sau tumora benigna a vaselor sangvine', 'Hiperhidroza sau transpiratie excesiva', 'Hipertricoza, hirsutism sau pilozitate excesiva', 'Keratoza actinica, keratoza solara sau keratoza senila', 'Lipom', 'Matreata', 'Melanom', 'Pelada, alopecia areata sau alopecia “in placi”', 'Pielea uscata sau xerodermia', 'Psoriazisul', 'Raia sau scabia', 'Ulcerul de gamba', 'Vergeturile', 'Vitiligo sau depigmentarea pielii', 'Zona zoster');
  lista_boli_orl varr := varr('Boala Meniere sau hidropsul endolimfatic', 'Buza de iepure sau cheiloschizis', 'Cancerul laringian', 'Crupul laringian', 'Despicatura valului palatin, palatoschizis sau gura de lup', 'Deviatia de sept nazal', 'Faringita streptococica acuta', 'Fractura de piramida nazala', 'Hemorogie nazala', 'Hipoacuzia sau auzul slab la copii', 'Laringita sau inflamatia laringelui', 'Limba fixata sau anchiloglosia', 'Neurinomul acustic, schwanomul vestibular sau tumora de unghi cerebelo-pontin', 'Otita externa sau inflamatia canalului auditiv extern', 'Otita medie sau inflamatia urechii medii', 'Otoscleroza', 'Rinita alergica	Sforaitul', 'Sinuzita sau inflamatia mucoasei sinusale', 'Sinuzitele la copii', 'Surditatea', 'Tinitus', 'Vertijul postural paroxistic benign sau vertijul pozitional');
  lista_boli_oftalmologie varr := varr('Ambliopia', 'Astigmatism', 'Blefarita', 'Cataracta', 'Conjunctivita', 'Conjunctivita alergica sau alergiile oculare', 'Conjunctivita infectioasa', 'Degenerescenta maculara', 'Dezlipirea de retina', 'Discromatopsia sau lipsa perceptiei culorilor', 'Glaucom	Hipermetropia', 'Miopia	Obstructia canalului lacrimal', 'Orjeletul ( Ulciorul ) si Salazionul', 'Prezbiopia', 'Ptoza palpebrala', 'Retinoblastomul', 'Retinopatia diabetica', 'Sindromul ochiului uscat, keratoconjunctivita uscata sau xeroftalmia', 'Strabism', 'Uveita');
  lista_boli_gastroentero varr := varr('Abces pancreatic', 'Boala de reflux gastroesofagian', 'Colecistita', 'Colita ulcerativa', 'Disfagie', 'Dispepsie sau indigestie', 'Diverticul Meckel', 'Diverticuloza colonica', 'Gastrita', 'Hemoragia digestiva', 'Hemoragia diverticulara', 'Hemoragia gastro-intestinala (Hemoragia digestiva)', 'Hemoroizi', 'Hepatita alcoolica', 'Hepatita autoimuna', 'Hepatita virala B', 'Hepatita virala C', 'Hepatita virala D', 'Hernia hiatala', 'Hernia ombilicala', 'Insuficienta hepatica', 'Intoleranta la lactoza', 'Litiaza biliara', 'Ocluzia intestinala', 'Peritonita bacteriana spontana (PBS)', 'Sindromul de colon iritabil', 'Ulcer gastric', 'Ulcerul duodenal');
  lista_boli_infectioase varr := varr('Abces periamigdalian	', 'Amigdalita sau angina', 'Antrax', 'Boala hidatica sau hidatidoza', 'Boala sarutului sau mononucleoza infectioasa', 'Botulismul', 'Celulita', 'Crupul laringian', 'Difteria', 'Encefalita', 'Fasceita necrozanta', 'Giardioza sau lambliaza', 'Gripa', 'Gripa aviara', 'Gripa porcina', 'Hepatita virala A', 'Hepatita virala B', 'Hepatita virala C', 'Meningita', 'Oreion sau parotidita epidemica', 'Oxiuroza', 'Pediculoza si paduchii', 'Poliomielita', 'Rabia sau turbarea', 'Raia sau scabia', 'Rubeola', 'Rujeola', 'Salmoneloza', 'Scarlatina', 'SIDA', 'Toxoplasmoza', 'Tuberculoza-forma pulmonara', 'Varicela sau varsat de vant', 'Zona zoster');
  lista_boli_ginecologie varr := varr('Abruptio placentae, decolarea prematura de placenta normal inserata sau hematomul retroplacentar', 'Amenoreea', 'Avortul spontan sau pierderea spontana a sarcinii', 'Boala inflamatorie pelvina (Anexita)', 'Boala tromboembolica puerperala a lehuzelor', 'Cancer de col uterin', 'Cancer ovarian', 'Cancerul de endometru', 'Cancerul de san sau cancerul mamar', 'Cancerul vaginal', 'Candidoza vaginala', 'Chisturile glandelor Bartholin', 'Cistocelul', 'Diabet gestational', 'Dismenoreea', 'Displazie cervicala', 'Durerea pelvina', 'Endometrioza si endometrioamele', 'Endometrita puerala', 'Fibrom uterin', 'Galactoreea', 'Insuficienta ovariana prematura sau menopauza prematura', 'Mastita sau inflamatia tesutului mamar', 'Mastodinia, mastalgia sau durerea de san', 'Mastoza fibrochistica', 'Menoragia, hipermenoreea sau menstruatia abundenta', 'Metroragie', 'Nasterea prematura sau declansarea prematura a travaliului', 'Placenta praevia', 'Prolaps uterin', 'Sarcina molara', 'Sindrom premenstrual sau PMS', 'Sindromul ovarului polichistic', 'Tricomonaza sau Infectia genitala cu Trichomonas vaginalis', 'Vaginita', 'Vaginita atrofica', 'Vaginita bacteriana sau vaginita nespecifica');
  lista_boli_pneumologie varr := varr('Abcesul pulmonar', 'BPOC', 'Bronsiectazia', 'Pleurezia', 'Pneumonia', 'Pneumotorax', 'Sforaitul', 'Trombembolismul pulmonar');
  lista_boli_neurologie varr := varr('Accident vascular cerebral', 'Amnezia', 'Boala Canavan', 'Boala Meniere sau hidropsul endolimfatic', 'Boala vacii nebune sau encefalopatia spongiforma bovina', 'Embolia cerebrala', 'Encefalita', 'Epilepsie', 'Hernia de disc', 'Hidrocefalia congenitala', 'Miastenia gravis', 'Neurinomul acustic, schwanomul vestibular sau tumora de unghi cerebelo-pontin', 'Neuropatia diabetica', 'Paralizia cerebrala', 'Paralizia faciala periferica sau paralizia Bell', 'Poliomielita', 'Pseudotumor cerebri sau hipertensiunea intracraniana cerebrala', 'Rabia sau turbarea', 'Sciatica, lombosciatica sau lomboradiculopatia S1', 'Scleroza laterala amiotrofica', 'Scleroza multipla, leuconevraxita sau scleroza in placi', 'Sindrom post-polio', 'Sindromul Guillain-Barre, polinevrita acuta ideopata, polinevrita infectioasa sau polineuropatia acuta inflamatorie', 'Sindromul picioarelor nelinistite', 'Spina bifida', 'Stenoza spinala cervicala', 'Tinitus', 'Tromboflebitele cerebrale', 'Tromboza de sinus cavernos', 'Tumori cerebrale', 'Vertijul', 'Vertijul postural paroxistic benign sau vertijul pozitional');
  lista_boli_chirurgie varr := varr('Abces pancreatic', 'Abcesul perianal si abcesul perirectal', 'Apendicita acuta - simptome, cauze si tratament', 'Boala pilonidala', 'Colecistita', 'Diverticul Meckel', 'Diverticuloza colonica', 'Fistula perianala', 'Fisura anala', 'Hemoragia diverticulara', 'Hemoragia gastro-intestinala (Hemoragia digestiva)', 'Hemoroizi', 'Hernia hiatala', 'Hernia inghinala', 'Hernia ombilicala', 'Hernii', 'Ischemia entero-mezenterica', 'Lipom', 'Litiaza biliara (calculi biliari, pietre la fiere)', 'Ocluzia intestinala (obstructia intestinala)', 'Peritonita', 'Peritonita bacteriana spontana (PBS)', 'Traumatismele esofagului');
  lista_boli_ortopedie varr := varr('Apofizita tibiala anterioara de crestere sau boala Osgood Schlatter', 'Calusurile si bataturile', 'Chist Baker, chist popliteu sau chist sinovial polipteu', 'Cifoza', 'Displazia si luxatia congenitala de sold', 'Epicondilita', 'Fractura bratului sau fractura diafizei humerale', 'Fractura de antebrat', 'Fractura de femur', 'Fractura de gamba', 'Fracturi costale', 'Hallux valgus sau monturile', 'Leziunile de menisc ale genunchiului', 'Luxatia de umar sau luxatia scapulo-humerala', 'Luxatia gleznei', 'Omoplatul supraridicat congenital sau maladia Sprengel', 'Osteoartrita', 'Osteomielita', 'Osteoporoza', 'Piciorul stramb congenital sau piciorul in varus equin', 'Pinteni calcaneeni sau osteofitoza', 'Scolioza', 'Sindrom dureros patelofemural sau “genunchiul alergatorului”', 'Sindromul tendonului iliotibial', 'Spina bifida', 'Torticolis congenital');
  lista_boli_nedocrinologie varr := varr('Acromegalia si gigantism', 'Boala Addison', 'Diabet gestational', 'Diabet insipid', 'Diabetul zaharat', 'Feocromocitom', 'Hiperaldosteronismul primar sau sindromul Conn', 'Hipertirodismul', 'Hipotiroidism', 'Nanism hipofizar', 'Neuropatia diabetica', 'Nodulii tiroidieni', 'Osteoporoza', 'Retinopatia diabetica', 'Sindromul Cushing', 'Tiroidita Hashimoto sau tiroidita autoimuna', 'Virilismul');
  lista_boli_alergologie varr := varr('Alergia', 'Alergia alimentara', 'Alergia la medicamente', 'Alergia la penicilina', 'Alergia la praf sau acarieni', 'Alergia la proteinele din ou', 'Alergiile la copil', 'Anafilaxia', 'Astmul bronsic', 'Astmul la copii', 'Conjunctivita alergica sau alergiile oculare', 'Dermatita atopica', 'Dermatita atopica a copilului sau eczema', 'Febra fanului sau alergia la polen', 'Rinita alergica', 'Urticaria');
  lista_boli_nefrologie varr := varr('Chisturile renale, rinichii polichistici sau polichistoza renala', 'Cistita acuta', 'Cistita cronica', 'Cistita interstitiala sau sindromul vezicii dureroase', 'Colica renala', 'Cum putem preveni aparitia pietrelor la rinichi ?', 'Glomerulonefrita acuta', 'Glomerulonefrita cronica', 'Infectiile tractului urinar', 'Insuficienta renala cu evolutie acuta', 'Insuficienta renala cu evolutie cronica', 'Litiaza renala, calculii renali sau pietrele la rinichi', 'Nefropatia diabetica', 'Pielonefrita acuta', 'Pielonefrita cronica', 'Sindromul nefrotic', 'Uretrita');
  
  CURSOR   lista_id_doctor IS SELECT id_doctor FROM doctor;
  CURSOR   lista_id_asistenta IS SELECT id_asistenta FROM asistenta;
  
  lista_medicamente varr :=varr('Fentanil','Morfina','Strepsils','Eurespal','Decasept','Ospen','Nurofen','Aerius','Paracetamol','Furazolidon','Humalog','Carboplatin','Adriamycin','Fluorouracil','Doxorubicin','Paraplatin','Toposar','Velban','Aspirina','Nitrostat','Norvacs','Aspirin 81','Aspenter','Unocardio','Atorvastatin','Tepadina' ,'Velban','Triamcinolon','Elidel','Cortizone-10','Ambroxol','Ambroflu','Amoxicilin RNP','Augmentin','Azatril','Azitrox','Biseptol','Bronolac','Bicilin','Efferalgan','Eufilin','Flavamed','Flemoxin Solutab','Halixol','Helmadol','Hemomycin','Klamox','Lasolvan','Mucosin cu miere',' Paracetamol sirop/supozitorii', 'Panadol Baby', 'Pulmoxo', 'Salbutamol', 'Sekrol',' Sumamed', 'Sumamed forte', 'Vermigal', 'Vermizol',' Zentel', 'Zinat');
  v_nume_med VARCHAR(30);
  v_cost NUMBER;
  v_id_medicament medicament.id_med%type;
BEGIN
   
   /*Pentru tabelul sectie*/
    FOR v_i IN 1..16 LOOP
     LOOP
           v_id :=  'SECT' || FLOOR(DBMS_RANDOM.VALUE(1,17));
           select count(*) into v_temp from sectie where id_sectie = v_id;
           exit when v_temp=0;   
      END LOOP;
    LOOP 
    v_denumire_sectie :=lista_sectie(TRUNC(DBMS_RANDOM.VALUE(0,lista_sectie.count))+1);
     select count(*) into v_temp from sectie where v_denumire_sectie = nume_sectie;
     exit when v_temp=0;   
    END LOOP;
    insert into sectie values (v_id,v_denumire_sectie);
    END LOOP;
   
   /*pentru tabelul PACIENT*/
   FOR v_i IN 1..1000000 LOOP
      LOOP
           v_id := FLOOR(DBMS_RANDOM.VALUE(1000,9999)) || 'PAC' || FLOOR(DBMS_RANDOM.VALUE(1000000,9999999));
           select count(*) into v_temp from pacient where id_pacient = v_id;
           exit when v_temp=0;   
      END LOOP;
      
      v_nume_pacient := lista_nume(TRUNC(DBMS_RANDOM.VALUE(0,lista_nume.count))+1);--nume
      
      v_gen := lista_gen(TRUNC(DBMS_RANDOM.VALUE(0,lista_gen.count))+1);--gen
      
      IF v_gen = 'M' THEN--prenume
        v_prenume_pacient := lista_prenume_baieti(TRUNC(DBMS_RANDOM.VALUE(0,lista_prenume_baieti.count))+1);
      ELSE
        v_prenume_pacient := lista_prenume_fete(TRUNC(DBMS_RANDOM.VALUE(0,lista_prenume_fete.count))+1);
      END IF;
      
      v_data_nastere := TO_DATE(TRUNC(DBMS_RANDOM.value(TO_CHAR(date '1900-01-01','J'),TO_CHAR(SYSDATE,'J'))),'J');--data nasterii
      
      v_gr_sanguina := lista_gr_sanguina(TRUNC(DBMS_RANDOM.VALUE(0,lista_gr_sanguina.count))+1);--grupa sanguina
      
      
      
      insert into pacient values (v_id, v_nume_pacient, v_prenume_pacient, v_data_nastere, v_gr_sanguina, v_gen);
     -- DBMS_OUTPUT.PUT_LINE(v_id || ' Gen ' || v_gen || ' prenume: ' || v_prenume_pacient || ' nume: ' || v_nume_pacient || ' data nasterii ' || v_data_nastere || ' grupa sanguina ' || v_gr_sanguina);
    END LOOP;
   
      
    /*Pentru tabelul DOCTOR*/
    FOR v_i IN 1..100000 LOOP
      LOOP
           v_id := FLOOR(DBMS_RANDOM.VALUE(1,17)) || 'DOC' || FLOOR(DBMS_RANDOM.VALUE(1000000,9999999));
           select count(*) into v_temp from doctor where id_doctor = v_id;
           exit when v_temp=0;   
      END LOOP;
        
      v_temp3 := SUBSTR(v_id,1,2);
       IF SUBSTR(v_temp3,2,1) = 'D' THEN v_temp3 :=SUBSTR(v_temp3,1,1);
       END IF;
      v_temp2 := 'SECT' || v_temp3;
      
      v_nume := lista_lname(TRUNC(DBMS_RANDOM.VALUE(0,lista_lname.count))+1);
      v_prenume := lista_fname(TRUNC(DBMS_RANDOM.VALUE(0,lista_fname.count))+1);
      v_data_nastere := TO_DATE(TRUNC(DBMS_RANDOM.value(TO_CHAR(date '1957-01-01','J'),TO_CHAR(date '1998-01-01','J'))),'J');
      v_data_angajare := TO_DATE(TRUNC(DBMS_RANDOM.VALUE(TO_CHAR(ADD_MONTHS(v_data_nastere,12*20), 'J'), TO_CHAR(SYSDATE,'J'))),'J');
      insert into doctor values (v_id,v_temp2,v_nume, v_prenume,v_data_nastere, v_data_angajare);
    END LOOP;

   
   /*Pentru tabelul Asistenta*/
   FOR v_i IN 1..100000 LOOP
    
      LOOP
           v_id := FLOOR(DBMS_RANDOM.VALUE(1,14)) || 'ASIS' || FLOOR(DBMS_RANDOM.VALUE(1000000,9999999));
           select count(*) into v_temp from asistenta where id_asistenta = v_id;
           exit when v_temp=0;   
      END LOOP;
      
      v_temp3 := SUBSTR(v_id,1,2);
       IF SUBSTR(v_temp3,2,1) = 'A' THEN v_temp3 :=SUBSTR(v_temp3,1,1);
       END IF;
       v_temp2 := 'SECT' || v_temp3;
       
    v_nume := lista_nume_asistent(TRUNC(DBMS_RANDOM.VALUE(0,lista_nume_asistent.count))+1);
    v_prenume := lista_prenume_asistent(TRUNC(DBMS_RANDOM.VALUE(0,lista_prenume_asistent.count))+1);
    --fac generare de date intre 01-01-1960 si data 01-01-1998
    v_data_nastere := TO_DATE(TRUNC(DBMS_RANDOM.value(TO_CHAR(date '1957-01-01','J'),TO_CHAR(date '1998-01-01','J'))),'J');
    --acum adaug la data de nastere 20 de ani si generez random o data de angajare
    v_data_angajare := TO_DATE(TRUNC(DBMS_RANDOM.VALUE(TO_CHAR(ADD_MONTHS(v_data_nastere,12*20), 'J'), TO_CHAR(SYSDATE,'J'))),'J');
     insert into asistenta values (v_id,v_temp2,v_nume, v_prenume,v_data_angajare, v_data_nastere);
     END LOOP;
  
    
    /*Pentru tabelul Camere*/
   FOR v_i IN 1..10000 LOOP
   v_tip_camera :=lista_tip(TRUNC(DBMS_RANDOM.VALUE(0,lista_tip.count))+1);
   v_temp2 := 'SECT' || FLOOR(DBMS_RANDOM.VALUE(1,17)); 
    LOOP
         v_numar_camera := FLOOR(DBMS_RANDOM.VALUE(100,25000));
         select count(*) into v_temp from camera where nr_camera = v_numar_camera;
         exit when v_temp=0;   
    END LOOP;
     
    v_capacitate_camera :=FLOOR(DBMS_RANDOM.VALUE(1,5));

    insert into camera values (v_numar_camera,v_temp2,v_capacitate_camera,v_tip_camera);
  END LOOP;
  
  /*Pentru tabelele REGISTRU_BOLI si BOLI_PE_SECTIE*/
  FOR v_i IN 1..lista_boli_pediatrie.count LOOP
    LOOP
         v_id := '1B' || FLOOR(DBMS_RANDOM.VALUE(1000,99999));
         select count(*) into v_temp from registru_boli where id_boala = v_id;
         exit when v_temp=0;   
    END LOOP;
    select id_sectie into v_temp2 from sectie where nume_sectie like 'Pediatrie';
    insert into registru_boli values(v_id, lista_boli_pediatrie(v_i));
    insert into boli_pe_sectie values(v_id,v_temp2);
  END LOOP;
  FOR v_i IN 1..lista_boli_cardiologie.count LOOP
    LOOP
         v_id := 2 || 'B' || FLOOR(DBMS_RANDOM.VALUE(1000,99999));
         select count(*) into v_temp from registru_boli where id_boala = v_id;
         exit when v_temp=0;   
    END LOOP;
    select id_sectie into v_temp2 from sectie where nume_sectie like 'Cardiologie';
    insert into registru_boli values(v_id, lista_boli_cardiologie(v_i));
    insert into boli_pe_sectie values(v_id,v_temp2);
  END LOOP;
  FOR v_i IN 1..lista_boli_oncologie.count LOOP
    LOOP
         v_id := 3 || 'B' || FLOOR(DBMS_RANDOM.VALUE(1000,99999));
         select count(*) into v_temp from registru_boli where id_boala = v_id;
         exit when v_temp=0;   
    END LOOP;
    select id_sectie into v_temp2 from sectie where nume_sectie like 'Oncologie';
    insert into registru_boli values(v_id, lista_boli_oncologie(v_i));
    insert into boli_pe_sectie values(v_id,v_temp2);
  END LOOP;
  FOR v_i IN 1..lista_boli_orl.count LOOP
    LOOP
         v_id := 4 || 'B' || FLOOR(DBMS_RANDOM.VALUE(1000,99999));
         select count(*) into v_temp from registru_boli where id_boala = v_id;
         exit when v_temp=0;   
    END LOOP;
    select id_sectie into v_temp2 from sectie where nume_sectie like 'ORL';
    insert into registru_boli values(v_id, lista_boli_orl(v_i));
    insert into boli_pe_sectie values(v_id,v_temp2);
  END LOOP;
  FOR v_i IN 1..lista_boli_oftalmologie.count LOOP
    LOOP
         v_id := 5 || 'B' || FLOOR(DBMS_RANDOM.VALUE(1000,99999));
         select count(*) into v_temp from registru_boli where id_boala = v_id;
         exit when v_temp=0;   
    END LOOP;
    select id_sectie into v_temp2 from sectie where nume_sectie like 'Oftalmologie';
    insert into registru_boli values(v_id, lista_boli_oftalmologie(v_i));
    insert into boli_pe_sectie values(v_id,v_temp2);
  END LOOP;
  FOR v_i IN 1..lista_boli_gastroentero.count LOOP
    LOOP
         v_id := 6 || 'B' || FLOOR(DBMS_RANDOM.VALUE(1000,99999));
         select count(*) into v_temp from registru_boli where id_boala = v_id;
         exit when v_temp=0;   
    END LOOP;
    select id_sectie into v_temp2 from sectie where nume_sectie like 'Gastoentero';
    insert into registru_boli values(v_id, lista_boli_gastroentero(v_i));
    insert into boli_pe_sectie values(v_id,v_temp2);
  END LOOP;
  FOR v_i IN 1..lista_boli_infectioase.count LOOP
    LOOP
         v_id := 7 || 'B' || FLOOR(DBMS_RANDOM.VALUE(1000,99999));
         select count(*) into v_temp from registru_boli where id_boala = v_id;
         exit when v_temp=0;   
    END LOOP;
    select id_sectie into v_temp2 from sectie where nume_sectie like 'Infectioase';
    insert into registru_boli values(v_id, lista_boli_infectioase(v_i));
    insert into boli_pe_sectie values(v_id,v_temp2);
  END LOOP;
  FOR v_i IN 1..lista_boli_ginecologie.count LOOP
    LOOP
         v_id := 8 || 'B' || FLOOR(DBMS_RANDOM.VALUE(1000,99999));
         select count(*) into v_temp from registru_boli where id_boala = v_id;
         exit when v_temp=0;   
    END LOOP;
    select id_sectie into v_temp2 from sectie where nume_sectie like 'Ginecologie';
    insert into registru_boli values(v_id, lista_boli_ginecologie(v_i));
    insert into boli_pe_sectie values(v_id,v_temp2);
  END LOOP;
  FOR v_i IN 1..lista_boli_pneumologie.count LOOP
    LOOP
         v_id := 9 || 'B' || FLOOR(DBMS_RANDOM.VALUE(1000,99999));
         select count(*) into v_temp from registru_boli where id_boala = v_id;
         exit when v_temp=0;   
    END LOOP;
    select id_sectie into v_temp2 from sectie where nume_sectie like 'Pneumologie';
    insert into registru_boli values(v_id, lista_boli_pneumologie(v_i));
    insert into boli_pe_sectie values(v_id,v_temp2);
  END LOOP;
  FOR v_i IN 1..lista_boli_neurologie.count LOOP
    LOOP
         v_id := 10 || 'B' || FLOOR(DBMS_RANDOM.VALUE(1000,99999));
         select count(*) into v_temp from registru_boli where id_boala = v_id;
         exit when v_temp=0;   
    END LOOP;
    select id_sectie into v_temp2 from sectie where nume_sectie like 'Neurologie';
    insert into registru_boli values(v_id, lista_boli_neurologie(v_i));
    insert into boli_pe_sectie values(v_id,v_temp2);
  END LOOP;
  FOR v_i IN 1..lista_boli_chirurgie.count LOOP
    LOOP
         v_id := 11 || 'B' || FLOOR(DBMS_RANDOM.VALUE(1000,99999));
         select count(*) into v_temp from registru_boli where id_boala = v_id;
         exit when v_temp=0;   
    END LOOP;
    select id_sectie into v_temp2 from sectie where nume_sectie like 'Chirurgie generala';
    insert into registru_boli values(v_id, lista_boli_chirurgie(v_i));
    insert into boli_pe_sectie values(v_id,v_temp2);
  END LOOP;
  FOR v_i IN 1..lista_boli_ortopedie.count LOOP
    LOOP
         v_id := 12 || 'B' || FLOOR(DBMS_RANDOM.VALUE(1000,99999));
         select count(*) into v_temp from registru_boli where id_boala = v_id;
         exit when v_temp=0;   
    END LOOP;
    select id_sectie into v_temp2 from sectie where nume_sectie like 'Ortopedie';
    insert into registru_boli values(v_id, lista_boli_ortopedie(v_i));
    insert into boli_pe_sectie values(v_id,v_temp2);
  END LOOP;
  FOR v_i IN 1..lista_boli_nedocrinologie.count LOOP
    LOOP
         v_id := 13 || 'B' || FLOOR(DBMS_RANDOM.VALUE(1000,99999));
         select count(*) into v_temp from registru_boli where id_boala = v_id;
         exit when v_temp=0;   
    END LOOP;
    select id_sectie into v_temp2 from sectie where nume_sectie like 'Endocrinologie';
    insert into registru_boli values(v_id, lista_boli_nedocrinologie(v_i));
    insert into boli_pe_sectie values(v_id,v_temp2);
  END LOOP;
  FOR v_i IN 1..lista_boli_alergologie.count LOOP
    LOOP
         v_id := 14 || 'B' || FLOOR(DBMS_RANDOM.VALUE(1000,99999));
         select count(*) into v_temp from registru_boli where id_boala = v_id;
         exit when v_temp=0;   
    END LOOP;
    select id_sectie into v_temp2 from sectie where nume_sectie like 'Alergologie';
    insert into registru_boli values(v_id, lista_boli_alergologie(v_i));
    insert into boli_pe_sectie values(v_id,v_temp2);
  END LOOP;
  FOR v_i IN 1..lista_boli_nefrologie.count LOOP
    LOOP
         v_id := 15 || 'B' || FLOOR(DBMS_RANDOM.VALUE(1000,99999));
         select count(*) into v_temp from registru_boli where id_boala = v_id;
         exit when v_temp=0;   
    END LOOP;
    select id_sectie into v_temp2 from sectie where nume_sectie like 'Nefrologie';
    insert into registru_boli values(v_id, lista_boli_nefrologie(v_i));
    insert into boli_pe_sectie values(v_id,v_temp2);
  END LOOP;
  FOR v_i IN 1..lista_boli_dermatologie.count LOOP
    LOOP
         v_id := 16 || 'B' || FLOOR(DBMS_RANDOM.VALUE(1000,99999));
         select count(*) into v_temp from registru_boli where id_boala = v_id;
         exit when v_temp=0;   
    END LOOP;
    select id_sectie into v_temp2 from sectie where nume_sectie like 'Dermatologie';
    insert into registru_boli values(v_id, lista_boli_dermatologie(v_i));
    insert into boli_pe_sectie values(v_id,v_temp2);
  END LOOP;
  /* end REGISTRU_BOLI SI BOLI_PE_SECTIE*/
      
  
    v_id_medicament :=1;
   /*Pentru tabel MEDICAMENTE*/
    FOR v_i IN 1..lista_medicamente.count LOOP
      v_nume_med := lista_medicamente(v_i);
      v_cost := TRUNC(DBMS_RANDOM.VALUE(40,250));
      insert into medicament values(v_id_medicament,v_nume_med,v_cost);
      v_id_medicament := v_id_medicament +1;
    END LOOP;
    
   
END;


select count(*) from doctor;
select * from camera where id_sectie like 'SECT16';
select count(*) from pacient;
SELECT* FROM SECTIE order by id_sectie;
SELECT* FROM registru_boli;
select count(*) from boli_pe_sectie;
select * from boli_pe_sectie;
select * from distributie_asistent_pe_sectie;


