






DELIMITER $
CREATE TRIGGER askisi4b
BEFORE  UPDATE  ON company /*before gt einai kata tin diarkeia kai update epeidh leei enimerosi*/
FOR EACH ROW
BEGIN
IF(NEW.AFM !=OLD.AFM) THEN
  SET NEW.AFM = OLD.AFM ;
END IF;
IF(NEW.DOY != OLD.DOY) THEN
  SET NEW.DOY = OLD.DOY;
END IF;
IF(NEW.name != OLD.name) THEN 
    SET NEW.name = OLD.name;
END IF;
END$
DELIMITER ;

UPDATE company SET AFM = 'A199' WHERE name LIKE 'FAGE';
UPDATE company SET DOY = 'B Athinwn' WHERE name LIKE 'FAGE';
UPDATE company SET name = 'Nikas' WHERE street LIKE 'Ermou';





DROP TRIGGER IF EXISTS asktrig3;
DELIMITER $
CREATE TRIGGER asktrig3 BEFORE  UPDATE ON  user
FOR EACH ROW
BEGIN
 IF (old.username != new.username and old.username!='RenMant') THEN
  SIGNAL SQLSTATE VALUE '45000' SET MESSAGE_TEXT = 'DONT CHANGE';
 END IF;

 IF (old.password != new.password and old.password !='admin12') THEN
       SIGNAL SQLSTATE VALUE '45000' SET MESSAGE_TEXT = 'DONT CHANGE';
 END IF ;
 
 IF (old.name_of_user != new.name_of_user and old.name_of_user !='Reggina') THEN
         SIGNAL SQLSTATE VALUE '45000' SET MESSAGE_TEXT= 'DONT CHANGE';
 END IF;
 
 IF (old.surname_of_user != new.surname_of_user and old.surname_of_user != 'Manteli') THEN
      SIGNAL SQLSTATE VALUE '45000' SET MESSAGE_TEXT= 'DONT CHANGE'; 
 END IF;
       
 IF (old.register_date != new.register_date and old.register_date != '2015-10-23' ) THEN 
       SIGNAL SQLSTATE VALUE '45000' SET MESSAGE_TEXT= 'DONT CHANGE';
 END IF;
         
 IF (old.email != new.email and old.email != 'regmanteli@gmail.com' ) THEN
        SIGNAL SQLSTATE VALUE '45000' SET MESSAGE_TEXT= 'DONT CHANGE';
 END IF;
        
END$
DELIMITER ;










DELIMITER$
CREATE TRIGGER change_evaluator /*meros B(ftiaxnw ton trigger gia na 
                                 min mporei na allaksei to username tou )*/
BEFORE  UPDATE ON evaluator     
FOR EACH ROW 
BEGIN 
DECLARE onoma_xristi VARCHAR(12);
DECLARE id INT(4);
DECLARE xronia_empeirias TINYINT(4);
DECLARE etairia CHAR(9);

UPDATE evaluator SET evaluator_id = ''

END$ 
DELIMITER ;