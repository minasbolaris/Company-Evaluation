  CREATE TABLE IF NOT EXISTS user(
  username VARCHAR(12) NOT NULL,
  password VARCHAR(10) NOT NULL,
  name_of_user VARCHAR(25) NOT NULL,
  surname_of_user VARCHAR(25) NOT NULL,
  email VARCHAR(30) NOT NULL,
  register_date DATETIME DEFAULT NULL,
  PRIMARY KEY (username)
)ENGINE=InnoDB;


 CREATE TABLE IF NOT EXISTS company (
 AFM CHAR(9) NOT NULL,
 DOY VARCHAR(15) NOT NULL,
 name VARCHAR(35) NOT NULL,
 phone_number BIGINT(16) NOT NULL,
 city VARCHAR(15) NOT NULL,
 street VARCHAR(15) NOT NULL,
 street_number TINYINT(4) NOT NULL,
 country VARCHAR(15) NOT NULL,
 PRIMARY KEY (AFM)
) ENGINE=InnoDB;


CREATE TABLE IF NOT EXISTS manager(
managerUsername VARCHAR(12) NOT NULL,
experience_years TINYINT(4) NOT NULL,
firm CHAR(9) DEFAULT NULL,
PRIMARY KEY (managerUsername),
CONSTRAINT ck1 FOREIGN KEY (managerUsername) REFERENCES user (username) 
ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT ck2 FOREIGN KEY (firm) REFERENCES company (AFM) 
ON DELETE CASCADE ON UPDATE CASCADE
)ENGINE=InnoDB;



CREATE TABLE IF NOT EXISTS employee (
  employee_username VARCHAR(12) NOT NULL,
  AM INT(7) NOT NULL,
  afm CHAR(9) NOT NULL,
  exp_years TINYINT(4),
  CV TEXT NOT NULL,
  awards VARCHAR(30), 
  certificates VARCHAR(30), 
  sistatikes VARCHAR(30),
  PRIMARY KEY (employee_username),
  CONSTRAINT ck3 FOREIGN KEY (employee_username) REFERENCES user (username) 
  ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT ck4 FOREIGN KEY (afm) REFERENCES company(AFM) 
  ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB;



CREATE TABLE  IF NOT EXISTS evaluator(
evaluator_id INT(4) NOT NULL,
evaluator_username VARCHAR(12) NOT NULL,
experience_years TINYINT(4) not null,
firm CHAR(9) NOT NULL,
PRIMARY KEY(evaluator_username),
CONSTRAINT ck5 FOREIGN KEY(evaluator_username) REFERENCES user(username) 
ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT ck6 FOREIGN KEY(firm) REFERENCES company(AFM) 
ON DELETE CASCADE ON UPDATE CASCADE
)engine=innodb;




CREATE TABLE IF NOT EXISTS admin (
admin_username VARCHAR(12) NOT NULL,
firm CHAR(9) NOT NULL,
CONSTRAINT ck40 FOREIGN KEY(admin_username) REFERENCES user(username) 
ON DELETE CASCADE  ON UPDATE CASCADE,
CONSTRAINT ck41 FOREIGN KEY (firm) REFERENCES company(AFM)
ON DELETE CASCADE ON UPDATE CASCADE
)engine=innodb;


CREATE TABLE IF NOT EXISTS job (
id INT(4) NOT NULL AUTO_INCREMENT,
start_date DATE NOT NULL,
salary FLOAT(6,1) NOT NULL ,
title VARCHAR(30) NOT NULL,
position VARCHAR(40) NOT NULL,
edra VARCHAR(45) NOT NULL,
evaluator VARCHAR(12) NOT NULL,
announcement_date DATETIME default current_timestamp ,
sumbission_date DATE NOT NULL,
descri TEXT NOT NULL,   /*perigrafi titlou*/ 
PRIMARY KEY (id,title),
CONSTRAINT ck8 FOREIGN KEY (evaluator) REFERENCES evaluator(evaluator_username) 
ON  DELETE CASCADE ON UPDATE CASCADE
)engine=innodb;


CREATE TABLE IF NOT EXISTS project (
employee_username VARCHAR(12) NOT NULL,
number_of_project TINYINT(4) AUTO_INCREMENT,
description TEXT NOT NULL,
url VARCHAR(60) NOT NULL,
PRIMARY KEY (number_of_project,employee_username),
CONSTRAINT ck9 FOREIGN KEY(employee_username) REFERENCES employee(employee_username) 
ON DELETE CASCADE ON UPDATE CASCADE
)engine=innodb;



CREATE TABLE IF NOT EXISTS languages (
employee_username VARCHAR(12) NOT NULL,
language SET ('EN','FR','SP','GR') NOT NULL,
PRIMARY KEY (employee_username, language),
CONSTRAINT ck10 FOREIGN KEY (employee_username) REFERENCES  employee(employee_username)
ON DELETE CASCADE ON UPDATE CASCADE
)engine=innodb;



CREATE TABLE IF NOT EXISTS degree (
title VARCHAR(50) NOT NULL,
institution VARCHAR(40) NOT NULL,
vathmida ENUM('lukeio','Univ','Master','PHD') NOT NULL,
PRIMARY KEY (title,institution)
)engine=innodb;




CREATE TABLE  IF NOT EXISTS requests_evaluation (
employee_username VARCHAR(12) NOT NULL,
job_id INT(4) NOT NULL,
PRIMARY KEY (employee_username,job_id),
CONSTRAINT ck14 FOREIGN KEY (employee_username) REFERENCES employee(employee_username)
ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT ck15 FOREIGN KEY (job_id) REFERENCES job(id)
ON DELETE CASCADE ON UPDATE CASCADE
)engine=innodb;


CREATE TABLE IF NOT EXISTS evaluation_result (
evaluation_id INT(4) NOT NULL,
evaluator_name VARCHAR(25) NOT NULL,
evaluator_surname VARCHAR(25) NOT NULL,
employee_username VARCHAR(12) NOT NULL,
job_id INT(4) NOT NULL,
grade INT(4),
comments VARCHAR(255) NOT NULL,
PRIMARY KEY(evaluation_id ,employee_username),
CONSTRAINT ck16 FOREIGN KEY(employee_username) REFERENCES employee(employee_username)
ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT ck21 FOREIGN KEY (job_id) REFERENCES job(id)
ON DELETE CASCADE ON UPDATE CASCADE
)engine=innodb;

CREATE TABLE IF NOT EXISTS submission_of_applications (
number_of_submission TINYINT(4) NOT NULL AUTO_INCREMENT,
job_id INT(4) NOT NULL,
employee_username VARCHAR(12) NOT NULL,
PRIMARY KEY (number_of_submission),
CONSTRAINT ck17 FOREIGN KEY (employee_username) REFERENCES employee(employee_username)
ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT ck19 FOREIGN KEY (job_id) REFERENCES job(id)
ON DELETE CASCADE ON UPDATE CASCADE
)engine=innodb;


CREATE TABLE IF NOT EXISTS antikeim (
title VARCHAR(36) NOT NULL,
description TINYTEXT NOT NULL,
belongs_to VARCHAR(36) NOT NULL,
PRIMARY KEY (title),
CONSTRAINT  ck23 FOREIGN KEY (belongs_to) REFERENCES antikeim(title) 
ON DELETE CASCADE ON UPDATE CASCADE
)engine=innodb;


CREATE TABLE IF NOT EXISTS needs (
job_id INT(4) NOT NULL,
antikeim_title VARCHAR(36) NOT NULL,
PRIMARY KEY(job_id,antikeim_title),
CONSTRAINT ck20 FOREIGN KEY (job_id) REFERENCES job(id)
ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT ck22 FOREIGN KEY (antikeim_title) REFERENCES antikeim(title)
ON DELETE CASCADE ON UPDATE CASCADE
)engine=innodb;




CREATE TABLE IF NOT EXISTS has_degree(
degree_title VARCHAR(50) NOT NULL,
degree_institution VARCHAR(40) NOT NULL,
employee_username VARCHAR(12) NOT NULL,
etos year(4) NOT NULL,
grade float(3,1) NOT NULL,
PRIMARY KEY(degree_title,degree_institution,employee_username),
CONSTRAINT ck30 FOREIGN KEY (degree_title,degree_institution) REFERENCES degree(title,institution)
ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT ck31 FOREIGN KEY (employee_username) REFERENCES employee(employee_username)
ON DELETE CASCADE ON UPDATE CASCADE
)engine=InnoDB;




CREATE TABLE IF NOT EXISTS aksiologisi1(
evaluator_username VARCHAR(12) NOT NULL,
employee_username VARCHAR(12) NOT NULL,
grade1 INT(4),
PRIMARY KEY(evaluator_username , employee_username),
CONSTRAINT ck32 FOREIGN KEY(employee_username) REFERENCES employee(employee_username)
ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT ck33 FOREIGN KEY(evaluator_username) REFERENCES evaluator(evaluator_username)
ON DELETE CASCADE ON UPDATE CASCADE
)engine=InnoDB;



CREATE TABLE IF NOT EXISTS aksiologisi2(
evaluator_username VARCHAR(12) NOT NULL,
employee_username VARCHAR(12) NOT NULL,
grade2 INT(4),
report_empl TEXT NOT NULL,
PRIMARY KEY(evaluator_username , employee_username),
CONSTRAINT ck34 FOREIGN KEY(employee_username) REFERENCES employee(employee_username)
ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT ck35 FOREIGN KEY(evaluator_username) REFERENCES evaluator(evaluator_username)
ON DELETE CASCADE ON UPDATE CASCADE 
)engine=InnoDB;


CREATE TABLE IF NOT EXISTS aksiologisi3(
evaluator_username VARCHAR(12) NOT NULL,
employee_username VARCHAR(12) NOT NULL,
grade3 INT(4),
sistatikes VARCHAR(30),
certificates VARCHAR(30),
PRIMARY KEY(evaluator_username , employee_username),
CONSTRAINT ck36 FOREIGN KEY(employee_username) REFERENCES employee(employee_username)
ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT ck37 FOREIGN KEY(evaluator_username) REFERENCES evaluator(evaluator_username)
ON DELETE CASCADE ON UPDATE CASCADE 
)engine=InnoDB;


