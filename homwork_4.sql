create table countries (
	id BIGSERIAL NOT NULL PRIMARY KEY,
	name VARCHAR(50) NOT NULL
);

insert into countries (name) values ('China');
insert into countries (name) values ('Canada');
insert into countries (name) values ('Russia');
insert into countries (name) values ('Ukraine');
insert into countries (name) values ('Argentina');
insert into countries (name) values ('Brazil');
insert into countries (name) values ('France');
insert into countries (name) values ('Pakistan');
insert into countries (name) values ('Australia');
insert into countries (name) values ('Japan');
insert into countries (name) values ('Canada');
insert into countries (name) values ('United States');
insert into countries (name) values ('Uzbekistan');
insert into countries (name) values ('Kazakhstan');
insert into countries (name) values ('Kyrgyzstan');
insert into countries (name) values ('Sweden');
insert into countries (name) values ('Philippines');
insert into countries (name) values ('Egypt');

create table cities (
	id BIGSERIAL NOT NULL PRIMARY KEY,
	name VARCHAR(50) NOT NULL
);

insert into cities (name) values ('Bishkek');
insert into cities (name) values ('Karakol');
insert into cities (name) values ('Tokmok');
insert into cities (name) values ('Osh');
insert into cities (name) values ('Batken');
insert into cities (name) values ('Jalal Abad');
insert into cities (name) values ('Talas');
insert into cities (name) values ('Balykchy');
insert into cities (name) values ('Alma Ata');
insert into cities (name) values ('Astana');
insert into cities (name) values ('Tashkent');
insert into cities (name) values ('New York');
insert into cities (name) values ('Chicago');
insert into cities (name) values ('Moscow');
insert into cities (name) values ('Sascatoon');
insert into cities (name) values ('Gamboula');
insert into cities (name) values ('La Carlota');
insert into cities (name) values ('Guaduas');
insert into cities (name) values ('Nepomuceno');
insert into cities (name) values ('Kembang');
insert into cities (name) values ('Bílovec');
insert into cities (name) values ('Xiangshui');
insert into cities (name) values ('Koutsopódi');

create table universities (
	id BIGSERIAL NOT NULL PRIMARY KEY,
	name VARCHAR(50) NOT NULL
);

insert into universities (name) values ('Kyrgyz State University of Construction, Transport and Arhitecture');
insert into universities (name) values ('University of Roma "Tor Vergata"');
insert into universities (name) values ('University of Trieste');
insert into universities (name) values ('Eurasian Institute of market');
insert into universities (name) values ('Carlow College');
insert into universities (name) values ('Westbrook University ');
insert into universities (name) values ('University of Liverpool');
insert into universities (name) values ('United Arab Emirates University');
insert into universities (name) values ('KBU International College');
insert into universities (name) values ('Fachhochschule Kempten, Hochschule für Technik und Wirtschaft');
insert into universities (name) values ('University of Moncton');
insert into universities (name) values ('Virginia State University');
insert into universities (name) values ('Vennard College');
insert into universities (name) values ('Universidad de Bogotá "Jorge Tadeo Lozano"');
insert into universities (name) values ('University of Zagreb');
insert into universities (name) values ('California Lutheran University');
insert into universities (name) values ('Wilmington College');
insert into universities (name) values ('Evangelische Fachhochschule Reutlingen-Ludwigsburg, Hochschule für Soziale Arbeit, Religionspädagogik und Diakonie');
insert into universities (name) values ('Universidade Federal de Uberlândia');
insert into universities (name) values ('Universidade de Caxias do Sul');


create table personal_data (
	id BIGSERIAL NOT NULL PRIMARY KEY,
	first_name VARCHAR(100) NOT NULL,
	last_name VARCHAR(100) NOT NULL,
	gender VARCHAR(50),
	phone_number VARCHAR(50),
	email VARCHAR(50) UNIQUE NOT NULL,
	age INT NOT NULL,
	cities_id INT REFERENCES cities(id),
	countries_id INT REFERENCES countries(id)

);
insert into personal_data (first_name, last_name, gender, phone_number, email, age) values ('Seiitbek', 'Narynbaev', 'Male', '7726011938', 'narynbaev.seiitbek@gmail.com',23);
insert into personal_data (first_name, last_name, gender, phone_number, email, age) values ('Azat', 'Ibraev', 'Male', '7613431863', 'azat@cbsnews.com', 22);
insert into personal_data (first_name, last_name, gender, phone_number, email, age) values ('Brietta', 'McTavy', 'Female', '7191766962', 'bmctavy0@reference.com', 19);
insert into personal_data (first_name, last_name, gender, phone_number, email, age) values ('Bat', 'Emsley', 'Male', '3216164031', 'bemsley1@plala.or.jp', 67);
insert into personal_data (first_name, last_name, gender, phone_number, email, age) values ('Nikolaos', 'MacFarland', 'Male', '8531539703', 'nmacfarland2@godaddy.com', 32);
insert into personal_data (first_name, last_name, gender, phone_number, email, age) values ('Alejandrina', 'Showt', 'Female', '9872835516', 'ashowt3@kickstarter.com', 67);
insert into personal_data (first_name, last_name, gender, phone_number, email, age) values ('Dyana', 'Penrice', 'Female', '4361420030', 'dpenrice4@yellowpages.com', 35);
insert into personal_data (first_name, last_name, gender, phone_number, email, age) values ('Rosette', 'Primak', 'Female', '5412332319', 'rprimak5@economist.com', 37);
insert into personal_data (first_name, last_name, gender, phone_number, email, age) values ('Katlin', 'De Dantesie', 'Female', '8717074430', 'kdedantesie6@issuu.com', 66);
insert into personal_data (first_name, last_name, gender, phone_number, email, age) values ('Clarke', 'Ohms', 'Genderqueer', '4241199737', 'cohms7@eventbrite.com', 32);
insert into personal_data (first_name, last_name, gender, phone_number, email, age) values ('Isador', 'McClenan', 'Male', '3405675939', 'imcclenan8@cnet.com', 22);
insert into personal_data (first_name, last_name, gender, phone_number, email, age) values ('Jesse', 'Boldt', 'Female', '9313679317', 'jboldt9@scientificamerican.com', 51);
insert into personal_data (first_name, last_name, gender, phone_number, email, age) values ('Chen', 'Hoggan', 'Male', '7191859879', 'choggana@fda.gov', 65);
insert into personal_data (first_name, last_name, gender, phone_number, email, age) values ('Grange', 'Ricoald', 'Male', '7262064269', 'gricoaldb@ebay.com', 50);
insert into personal_data (first_name, last_name, gender, phone_number, email, age) values ('Aggi', 'Durrington', 'Female', '6016859865', 'adurringtonc@clickbank.net', 18);
insert into personal_data (first_name, last_name, gender, phone_number, email, age) values ('Dolley', 'Idle', 'Female', '1342580652', 'didled@soup.io', 56);
insert into personal_data (first_name, last_name, gender, phone_number, email, age) values ('Coleen', 'Rolse', 'Female', '6604414003', 'crolsee@tmall.com', 36);
insert into personal_data (first_name, last_name, gender, phone_number, email, age) values ('Bard', 'Moutray Read', 'Male', '8495137095', 'bmoutrayreadf@stumbleupon.com', 38);
insert into personal_data (first_name, last_name, gender, phone_number, email, age) values ('Rubin', 'Challender', 'Male', '4443427398', 'rchallenderg@boston.com', 27);
insert into personal_data (first_name, last_name, gender, phone_number, email, age) values ('Augie', 'Hardison', 'Male', '6372882396', 'ahardisonh@accuweather.com', 17);
insert into personal_data (first_name, last_name, gender, phone_number, email, age) values ('Zebedee', 'Rignoldes', 'Male', '1427710881', 'zrignoldesi@drupal.org', 58);
insert into personal_data (first_name, last_name, gender, phone_number, email, age) values ('Bjorn', 'Dafydd', 'Genderqueer', '8502137227', 'bdafyddj@php.net', 38);
insert into personal_data (first_name, last_name, gender, phone_number, email, age) values ('Amalea', 'Panswick', 'Female', '7576751130', 'apanswickk@shutterfly.com', 65);
insert into personal_data (first_name, last_name, gender, phone_number, email, age) values ('Chevalier', 'Von Welldun', 'Male', '5671901696', 'cvonwelldunl@opensource.org', 21);
insert into personal_data (first_name, last_name, gender, phone_number, email, age) values ('Samara', 'Upstone', 'Agender', '9717439478', 'supstonem@zimbio.com', 56);
insert into personal_data (first_name, last_name, gender, phone_number, email, age) values ('Ozzie', 'Kenaway', 'Male', '3032427976', 'okenawayn@mozilla.org', 57);
insert into personal_data (first_name, last_name, gender, phone_number, email, age) values ('Malorie', 'Beachem', 'Female', '4279059326', 'mbeachemo@live.com', 58);
insert into personal_data (first_name, last_name, gender, phone_number, email, age) values ('Theobald', 'Jaszczak', 'Male', '4514164135', 'tjaszczakp@imdb.com', 22);
insert into personal_data (first_name, last_name, gender, phone_number, email, age) values ('Jannelle', 'Masarrat', 'Female', '2527117326', 'jmasarratq@cbslocal.com', 49);
insert into personal_data (first_name, last_name, gender, phone_number, email, age) values ('Damon', 'Gowrich', 'Genderfluid', '8783509196', 'dgowrichr@washingtonpost.com', 45);
insert into personal_data (first_name, last_name, gender, phone_number, email, age) values ('Chalmers', 'Paszek', 'Male', '8577229796', 'cpaszeks@adobe.com', 68);
insert into personal_data (first_name, last_name, gender, phone_number, email, age) values ('Mallory', 'Cammish', 'Male', '7313796410', 'mcammisht@guardian.co.uk', 48);


create table branch (
	id BIGSERIAL NOT NULL PRIMARY KEY,
	name VARCHAR(100) NOT NULL,
	universities_id INT REFERENCES universities(id),
	address VARCHAR(200) NOT NULL,
	cities_id INT REFERENCES cities(id),
	post_code VARCHAR(50)
);

insert into branch (name, address, post_code) values ('Bishkek', '87 Ahunbaeva', 720000);
insert into branch (name, address, post_code) values ('Merla', '0 Upham Circle', '612140');
insert into branch (name, address, post_code) values ('Odo', '94 Basil Hill', '75128 CEDEX 11');
insert into branch (name, address, post_code) values ('Port', '324 Texas Junction', '341 23');
insert into branch (name, address, post_code) values ('Maryjo', '04164 Steensland Center', null);

create table faculty (
	id BIGSERIAL NOT NULL PRIMARY KEY,
	name VARCHAR(200) NOT NULL,
	branch_id INT REFERENCES branch(id)
);

insert into faculty (name) values ('Faculty of Information Technology');
insert into faculty (name) values ('Faculty of Engineering');
insert into faculty (name) values ('Faculty of Electrical Engineering and Computing');
insert into faculty (name) values ('Faculty of Earth Sciences and Technology');
insert into faculty (name) values ('Faculty of Law:');
insert into faculty (name) values ('Faculty of Management Studies');
insert into faculty (name) values ('Faculty of Music');
insert into faculty (name) values ('Faculty of Philosophy');
insert into faculty (name) values ('Faculty of Education and Social Work');
insert into faculty (name) values ('Faculty of Humanities');


create table departments (
	id BIGSERIAL NOT NULL PRIMARY KEY,
	faculty_id INT REFERENCES faculty(id),
	name VARCHAR(50) NOT NULL
);
insert into departments (name) values ('Divanoodle');
insert into departments (name) values ('Dynabox');
insert into departments (name) values ('Devcast');
insert into departments (name) values ('Meevee');
insert into departments (name) values ('Bubblemix');
insert into departments (name) values ('Riffpath');
insert into departments (name) values ('Mynte');
insert into departments (name) values ('Skilith');
insert into departments (name) values ('Skinix');
insert into departments (name) values ('Quire');


create table specialties (
	id BIGSERIAL NOT NULL PRIMARY KEY,
	name VARCHAR(50) NOT NULL,
	departments_id INT REFERENCES departments(id)
	
);
insert into specialties (name) values ('Backend developer');
insert into specialties (name) values ('Frontend developer');
insert into specialties (name) values ('Anesthesiology');
insert into specialties (name) values ('Urology');
insert into specialties (name) values ('Linguistic');
insert into specialties (name) values ('Desing');
insert into specialties (name) values ('Arhitecture');
insert into specialties (name) values ('Mathematic');
insert into specialties (name) values ('Database scince');
insert into specialties (name) values ('Hardware developer');


create table acad_positions (
	id BIGSERIAL NOT NULL PRIMARY KEY,
	name VARCHAR(100)

);

insert into acad_positions (name) values ('Lecturer or Assistant Professorr');
insert into acad_positions (name) values ('Senior Assistant Professor');
insert into acad_positions (name) values ('Associate Professo');
insert into acad_positions (name) values ('Senior Associate professor');
insert into acad_positions (name) values ('Professor');
insert into acad_positions (name) values ('Lecturer');
insert into acad_positions (name) values ('Demonstrator');
insert into acad_positions (name) values ('Graduate Coordinators');
insert into acad_positions (name) values ('Undergraduate Coordinators');
insert into acad_positions (name) values ('Special scientists');



create table science_degree(
	id BIGSERIAL NOT NULL PRIMARY KEY,
	name VARCHAR(200)

);

insert into science_degree (name) values ('Associate degrees');
insert into science_degree (name) values ('Bachelor degrees');
insert into science_degree (name) values ('Associate Professor');
insert into science_degree (name) values ('First professional degrees');
insert into science_degree (name) values ('Master degrees');
insert into science_degree (name) values ('Research doctorates');
insert into science_degree (name) values ('Demonstrator');


create table education_form (
	id BIGSERIAL NOT NULL PRIMARY KEY,
	name VARCHAR(50) NOT NULL,
	is_active BOOLEAN 
);
insert into education_form (name, is_active) values ('Formal Education', true);
insert into education_form (name, is_active) values ('Informal Education', true);
insert into education_form (name, is_active) values ('Non-formal Education', true);


create table spesialty_edu_form (
	id BIGSERIAL NOT NULL PRIMARY KEY,
	education_form_id INT REFERENCES education_form(id),
	specialties_id INT REFERENCES specialties(id)

);


create table teachers (
	id BIGSERIAL NOT NULL PRIMARY KEY,
	departments_id INT REFERENCES departments(id),
	personal_data_id INT REFERENCES personal_data(id),
	acad_positions_id INT REFERENCES acad_positions(id),
	science_degree_id INT REFERENCES science_degree(id)

);

create table students (
	id BIGSERIAL NOT NULL PRIMARY KEY,
	personal_data_id INT REFERENCES personal_data(id),
	course INT,
    specialties_id INT REFERENCES specialties(id),
	spesialty_edu_form_id INT REFERENCES spesialty_edu_form(id),
	is_active BOOLEAN
);
insert into students (course, is_active) values (1, true);
insert into students (course, is_active) values (2, true);
insert into students (course, is_active) values (3, true);
insert into students (course, is_active) values (4, true);
insert into students (course, is_active) values (5, true);



CREATE TABLE disciplines (    
	id SERIAL NOT NULL PRIMARY KEY,    
	 name VARCHAR(100) NOT NULL,   
	 departments_id INT REFERENCES departments(id),  
	 teachers_id INT REFERENCES teachers(id),  
	 lecture_hours INT NOT NULL,    
     practice_hours INT NOT NULL
	 );





















