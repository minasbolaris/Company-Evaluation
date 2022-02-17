INSERT INTO user(username,password,name_of_user,surname_of_user,email,register_date) 
VALUES('MariaI','1234','Maria','Iliopoulou','mariaI@hotmail.com','2019-08-10'),
('ZachH','1234','Zacharias','Harrison','ZachH@gmail.com','2005-08-08'),
('IlianaK','1234','Iliana','Kavoura','ilianak@hotmail.com','2019-12-15'),
('MariaP','1234','Maria','Papanikolaou','mariapap@hotmail.com','2018-09-10'),
('KostasF','1234','Kostas','Filippou','kostasfi@gmail.com','2005-10-10'),
('MariannaF','1234','Marianna','Fwotpoulou','mariannaf@gmail.com','2013-12-16'),
('ThanosT','1234','Thanasis','Trepoulis','thanasist@hotmail.com','2017-05-02'),
('LeuterisX','admin123','Leuteris','Xatzopoulos','leutx@gmail.com','2003-03-08'),
('RenMant','admin12','Reggina','Manteli','regmanteli@gmail.com','2015-10-23'),
('KostasP','abcd','Kostas','Papadopoulos','kostasp@gmail.com', '2005-04-03'),
('DimitrisP','abcd','Dimitris', 'Papanikolos','dimitrispap@gmail.com','2000-10-20'),
('BillBak','abcd','Bill','Bakakis','billbak@gmail.com','2007-09-02'),
('GeorgeAgg','abcd','George','Aggelopoulos','gagg@gmail.com','2015-10-4'),
('VAgg','abcd','Vasilis','Aggelopoulos','vagg@hotmail.com','2003-08-17'),
('GMaur','abcd','George','Mauris','geomauris@hotmail.com','2007-09-10'),
('MinasB','abcd','Minas','Bolaris','minasb@hotmail.com','2004-12-23'),
('ChKal','abcd','Charis','Kalivas','chkal@gmail.com','2009-10-10'),
('StamIl','abcd','Stamatis','Iliopoulos','stam@gmail.com','2015-08-09'); 


INSERT INTO company(AFM,DOY,name,phone_number,city,street,street_number,country)
VALUES('A190','A Athinwn','FAGE','2105070915','Athens','Ermou','56','Greece'),
      ('B190','C Athinwn' , 'NIKE','2105780620','Athens','Kassianis','6','Greece'); 
     





INSERT INTO manager(managerUsername,experience_years,firm)
VALUES('DimitrisP','4','A190');
      ('KostasP','2','A190') , 
      ('MariaI','3','B190');
      



INSERT INTO employee(employee_username,AM,AFM,exp_years, CV , awards , certificates ,sistatikes)  
VALUES('GeorgeAgg','1','A190','4','Eimai eugenikos','EOY','pistopoihseis.txt','references.txt'),
      ('BillBak','2','A190','0','Eimai ergatikos','EOM','pistop.pdf','mySistatikes.txt'),
      ('MinasB','3','A190','6','Eimai poli kalos stin douleia mou','2x EOM','myPistopoihseis.txt','myref.txt'),
      ('ChKal','4','A190','1','Eimai o kaliteros ston tomea moy','EOM & EOY','mypist.pdf','mysist.docx'),
      ('KostasF','A','B190','5','Eimai poli kalos sto Marketing','2x-EOM','cert.pdf','sist.pdf'),
      ('MariannaF','B','B190','3','Eimai arketa aksiopisti ston tomea mou',null,null,null),
      ('ThanosT','C','B190','7','Eimai hard-worker kai thelw panta na petuxainw ton skopo mou','4x EOY','mycert.txt','pistop.txt');

     
      


 INSERT INTO evaluator(evaluator_id, evaluator_username , experience_years , firm)   
 VALUES('100','VAgg','2','A190');
         ('101','GMaur','4','A190'),
         ('102','StamIl','1','A190'),
         ('11','ZachH','3','B190'),
         ('22','IlianaK','8','B190'),
         ('33','MariaP','10','B190');



INSERT INTO admin(admin_username,firm)     
VALUES ('RenMant','A190'),
     ('LeuterisX','B190');
    




INSERT INTO job(id , start_date , salary, title , position , edra , evaluator , announcement_date , sumbission_date , descri)/*komple*/
VALUES ('1000','2019-05-04','80000,5','STORAGE','Employee','Athens','VAgg','2019-04-04 08:00::00','2019-04-05','We are looking for a progammer'),
       ('1001','2019-07-04','90050,2','SALES','Employee','Athens','GMaur','2019-05-03 10:00:00','2019-05-13','The sales will be door-to-door '),
       ('1002','2020-05-03','10000,5','STORE','Employee','Athens','VAgg','2020-03-02 11:00:00','2020-04-02','We are looking for an accountant');


   

INSERT INTO project(employee_username , number_of_project, description , url)  
VALUES('ChKal', 1 , 'Kathe fora pou epileksw ena apo ta drinks h yoghurts na afaireitai apo ta products.Xrhsimopoihsa Java' , 'CLASSES:Products,Drinks,Yoghurts'),
      ('MinasB',2,'Thelw na kataxwrisw ta barcodes twn ximwn(SQL) ','TABLES:Products , Juices '),
      ('GeorgeAgg',3,'Na vlepw ta montela twn pappoutsiwn - na faientai i xwra proeleushs toy dermatos(C++)','CLASSES:Shoes,Models - Classes:Shoes,Country'),
      ('MariannaF' , 4, 'Na mporw na vlepw ton mistho twn ypoloipwn ipallilwn(JAVA)' , 'CLASSES: Employees , Salary'),
      ('ThanosT',5,'Na mporw na vlepw tin imera adeias twn ipallilwn(SQL) ','TABLES:Employees , Time_off');

/*gia ton BillBak kai KostasF den exoume inserts dioti den exoun simmetasxei se kapoio project*/




INSERT INTO languages(employee_username,language) 
VALUES('GeorgeAgg','EN'),
      ('BillBak','EN,SP,GR'),
      ('MinasB','GR'),
      ('ChKal','SP'),
      ('KostasF','SP,FR'),
      ('MariannaF','SP,GR,FR'),
      ('ThanosT','FR');






INSERT INTO degree(title, institution , vathmida)     
VALUES('Computer Science' , 'Patrwn', 'PHD'),
      ('Mathematics','Peiraia','Master'),
      ('Economics','Athinwn' , 'Univ'),
      ('Marketing' , 'Thessalonikis' , 'Master');




INSERT INTO requests_evaluation(employee_username,job_id)  
VALUES('MinasB','1000'),
      ('BillBak','1001'),
      ('ChKal','1002'),
      ('GeorgeAgg','1001'),
      ('KostasF','1000'),
      ('MariannaF','1001'),
      ('ThanosT','1002');




 
 INSERT INTO evaluation_result(evaluation_id, evaluator_name, evaluator_surname, employee_username , job_id , grade, comments)
 VALUES('1','Vasilis','Aggelopoulos','GeorgeAgg','1001',8,'Oloklirwthike h aksiologisi');
       ('2','Vasilis','Aggelopoulos', 'MinasB','1000',5,'Oloklirwthike h aksiologisi!'),
       ('3','Vasilis','Aggelopoulos','BillBak','1001',null,'Den exei Oloklirwthei'),
       ('4','Vasilis','Aggelopoulos','ChKal','1002',10,'Oloklirwthike h aksiologisi');





 INSERT INTO submission_of_applications(number_of_submission,job_id,employee_username) /*exw vgalei tin timi tou thanou*/
 VALUES('1','1001','GeorgeAgg'),
       ('2','1001','BillBak'),
       ('3','1002','ChKal'),
       ('4','1000','MinasB'),
       ('5','1000','KostasF'),
       ('6','1001','MariannaF');




INSERT INTO antikeim(title , description , belongs_to)   /*komple*/
VALUES('Programmer','Knowlegde Java and SQL','Programmer'),
      ('Marketing','Knowlegde about companies and sales','Marketing'),
      ('Accountant','Knowlegde about the economics of company','Accountant');







INSERT INTO needs(job_id , antikeim_title )  
VALUES('1000','Programmer'),
      ('1001','Marketing'),
      ('1002','Accountant');




INSERT INTO has_degree(degree_title , degree_institution , employee_username , etos , grade) 
VALUES('Computer Science' , 'Patrwn' , 'MinasB','2005','6,7'),
      ('Mathematics' , 'Peiraia','BillBak','2010','5,4'),
      ('Economics','Athinwn','GeorgeAgg','2010','7,8'),
      ('Marketing','Thessalonikis','ChKal','2010','7,0');





  INSERT INTO aksiologisi1( evaluator_username , employee_username , grade1) 
    VALUES('VAgg','MinasB',2);
         ('VAgg','GeorgeAgg',4),
         ('VAgg','BillBak',0),
         ('VAgg','ChKal',4),
         ('MariaP','KostasF',2),
         ('MariaP','MariannaF',1),
         ('MariaP','ThanosT',3);

  
  INSERT INTO aksiologisi2(evaluator_username , employee_username , grade2,report_empl)  
  VALUES('VAgg','MinasB',1,'O MinasB einai metrios stin douleia tou');
        ('VAgg','GeorgeAgg',3,'Apo ton GeorgeAgg eimai poli ikanopoiimenos'),
        ('VAgg','BillBak',null,'O sugkekrimenos ipallilos mporei na prosferei parapanw'),
        ('VAgg','ChKal',4,'O ChKal einai ekpliktikos stin douleia toy kai poly ergatikos'), 
        ('MariaP','KostasF',1,'O KostasF prepei na ginei pio ergatikos'),
        ('MariaP','MariannaF',1,'H MariannaF exei aneprarkeia se gnwseis'),
        ('MariaP','ThanosT',4,'O ThanosT einai eksairetikos stin douleia tou');



  INSERT INTO aksiologisi3(evaluator_username , employee_username , grade3, sistatikes, certificates ) 
  VALUES('VAgg','MinasB',2,'sist.txt' ,'cert.txt');
        ('VAgg','GeorgeAgg',1,'sistatikes.txt','certif.txt'),
        ('VAgg','BillBak',null,'mySist.txt','myCert.txt'),
        ('VAgg','ChKal',2,'mysistatikes.pdf','mycertificates.pds'),
        ('MariaP','KostasF',0,'kfsistatikes.txt','kfcertificates.txt'),
        ('MariaP','MariannaF',1,'msist.txt','mcert.txt'),
        ('MariaP','ThanosT',2,'thanossistatikes.pdf','thanoscertificates.pdf');

