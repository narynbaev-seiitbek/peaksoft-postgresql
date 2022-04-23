create table countries (
	id BIGSERIAL NOT NULL PRIMARY KEY,
	name VARCHAR(50) NOT NULL
);

insert into countries (name) values ('China'),('Canada'),('Russia'),('Ukraine'),('Argentina'),('Uzbekistan'),('Kazakhstan'),('Kyrgyzstan');


create table cities (
	id BIGSERIAL NOT NULL PRIMARY KEY,
	name VARCHAR(50) NOT NULL
);

insert into cities (name) values ('Bishkek'),('Karakol'),('Tokmok'),('Osh'),('Batken'),('Jalal Abad'),('Talas'),('Balykchy'),('Alma Ata'),('Astana'),('Tashkent');


create table universities (
	id BIGSERIAL NOT NULL PRIMARY KEY,
	name VARCHAR(50) NOT NULL
);

insert into universities (name) values ('Kyrgyz State University of Construction, Transport and Arhitecture');
 ('University of Roma "Tor Vergata"'),
 ('University of Trieste'),
 ('Eurasian Institute of market'),
 ('Carlow College');
 


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
insert into personal_data (first_name, last_name, gender, phone_number, email, age) values 
('Seiitbek', 'Narynbaev', 'Male', '7726011938', 'narynbaev.seiitbek@gmail.com',23);
('Azat', 'Ibraev', 'Male', '7613431863', 'azat@cbsnews.com', 22),
('Melis', 'Rasulbekov', 'Male', '7191766962', 'mels@reference.com', 19)
('Kenjebek', 'Temishov', 'Male', '3216164031', 'ken@plala.or.jp', 67)
('Azamat', 'Japarkulov', 'Male', '8531539703', 'aza@godaddy.com', 32),
('Rysbek', 'Asanaliev', 'Male', '9872835516', 'rysbek@kickstarter.com', 67),
('Roza', 'Otunbaeva', 'Female', '4361420030', 'roza@yellowpages.com', 35),
('Salamat', 'Sadykova', 'Female', '5412332319', 'salamat@economist.com', 37);

create table branch (
	id BIGSERIAL NOT NULL PRIMARY KEY,
	name VARCHAR(100) NOT NULL,
	universities_id INT REFERENCES universities(id),
	address VARCHAR(200) NOT NULL,
	cities_id INT REFERENCES cities(id),
	post_code VARCHAR(50)
);

insert into branch (name, address, post_code) values ('Bishkek', '87 Ahunbaeva', 720000),
 ('Karalol', '23 Tunystanova ', '612140'),
 ('Osh', '94 Bokonvaeva', '75128 CEDEX 11'),
 ('Batken', '324 Razakova', '341 23'),
 ('Tokmok', '64 Ibraimova', null);

create table faculty (
	id BIGSERIAL NOT NULL PRIMARY KEY,
	name VARCHAR(200) NOT NULL,
	branch_id INT REFERENCES branch(id)
);

insert into faculty (name) values ('Faculty of Information Technology'),
 ('Faculty of Engineering'),
 ('Faculty of Electrical Engineering and Computing'),
 ('Faculty of Earth Sciences and Technology'),
 ('Faculty of Law:'),
 ('Faculty of Management Studies'),
 ('Faculty of Music'),
 ('Faculty of Philosophy'),
 ('Faculty of Education and Social Work'),
 ('Faculty of Humanities');


create table departments (
	id BIGSERIAL NOT NULL PRIMARY KEY,
	faculty_id INT REFERENCES faculty(id),
	name VARCHAR(50) NOT NULL
);
insert into departments (name) values ('Balykchy'),
  ('Bishkek'),
  ('Osh'),
  ('Batken'),
  ('Talas'),
  ('Tokmmok'),
  ('Kant'),
  ('Kyzyl-Suu'),
  


create table specialties (
	id BIGSERIAL NOT NULL PRIMARY KEY,
	name VARCHAR(50) NOT NULL,
	departments_id INT REFERENCES departments(id)
	
);
insert into specialties (name) values ('Backend developer'),
 ('Frontend developer'),
 ('Anesthesiology'),
 ('Urology'),
 ('Linguistic'),
 ('Desing'),
 ('Arhitecture'),
 ('Mathematic'),
 ('Database scince'),
 ('Hardware developer');


create table acad_positions (
	id BIGSERIAL NOT NULL PRIMARY KEY,
	name VARCHAR(100)

);

insert into acad_positions (name) values ('Lecturer or Assistant Professorr'),
 ('Senior Assistant Professor'),
 ('Associate Professo'),
 ('Senior Associate professor'),
 ('Professor'),
 ('Lecturer'),
 ('Demonstrator'),
 ('Graduate Coordinators'),
 ('Undergraduate Coordinators'),
 ('Special scientists');



create table science_degree(
	id BIGSERIAL NOT NULL PRIMARY KEY,
	name VARCHAR(200)

);

insert into science_degree (name) values ('Associate degrees'),
 ('Bachelor degrees'),
 ('Associate Professor'),
 ('First professional degrees'),
 ('Master degrees'),
 ('Research doctorates'),
 ('Demonstrator');


create table education_form (
	id BIGSERIAL NOT NULL PRIMARY KEY,
	name VARCHAR(50) NOT NULL,
	is_active BOOLEAN 
);
insert into education_form (name, is_active) values ('Formal Education', true),
 ('Informal Education', true),
 ('Non-formal Education', true);


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
insert into students (course, is_active) values (1, true),
 (2, true),
 (3, true),
 (4, true),
 (5, true);



CREATE TABLE disciplines (    
	id SERIAL NOT NULL PRIMARY KEY,    
	 name VARCHAR(100) NOT NULL,   
	 departments_id INT REFERENCES departments(id),  
	 teachers_id INT REFERENCES teachers(id),  
	 lecture_hours INT NOT NULL,    
     practice_hours INT NOT NULL
	 );





















