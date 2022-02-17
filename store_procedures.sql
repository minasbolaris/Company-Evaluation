DELIMITER $
CREATE PROCEDURE sinoliki_aksiologisi(IN grade1 INT(4), IN grade2 INT(4), IN grade3 INT(4),OUT total INT(4)) /*anaferw gia poious grade
                                                                                                              exw kanei pradeigma*/
BEGIN

SET total = grade1 + grade2 + grade3;

END$
DELIMITER ; 

CALL sinoliki_aksiologisi(2,1,2,@tot);
SELECT @tot;







DELIMITER $
CREATE PROCEDURE askisi31(IN empl_name VARCHAR(25) , IN empl_surname VARCHAR(20))
BEGIN 
DECLARE num_of_applies TINYINT(4);
DECLARE eval_name VARCHAR(25);
DECLARE eval_surname VARCHAR(25);
DECLARE total_eval  INT(4);
DECLARE gradeCursor CURSOR FOR
 SELECT grade  FROM evaluation_result INNER JOIN employee ON employee.employee_username = evaluation_result.employee_username
 INNER JOIN user ON user.username = employee.employee_username
 WHERE empl_name = name_of_user AND empl_surname = surname_of_user;


SELECT number_of_submission INTO num_of_applies FROM submission_of_applications 
INNER JOIN employee ON employee.employee_username = submission_of_applications.employee_username
INNER JOIN user ON user.username = employee.employee_username 
WHERE empl_name = name_of_user AND empl_surname = surname_of_user;


SELECT evaluator_name , evaluator_surname INTO eval_name ,eval_surname FROM evaluation_result INNER JOIN employee ON employee.employee_username = evaluation_result.employee_username
INNER JOIN user ON user.username = employee.employee_username
WHERE empl_name = name_of_user AND empl_surname = surname_of_user;

SELECT num_of_applies; /*emfanisi a erwtimatos*/

 OPEN gradeCursor;
 FETCH gradeCursor INTO total_eval;
IF (total_eval IS NOT NULL )
THEN
   SELECT total_eval; /*emfanisi b erwtimatos*/
    
ELSE 
   SELECT ' Aksiologisi se ekseliksi!';      
 END IF;
 CLOSE gradeCursor;

 SELECT eval_name ,eval_surname; /*emfanisi c erwtimatos*/
END$
DELIMITER ; 
CALL askisi31('George' , 'Aggelopoulos');












 


  DROP PROCEDURE IF EXISTS ask3_2;
DELIMITER $
CREATE PROCEDURE ask3_2(IN jobId INT(4),IN eval_id INT(4))
begin 

DECLARE vathmos INT;
DECLARE vathmos1 INT;
DECLARE vathmos2 INT;
DECLARE vathmos3 INT;


DECLARE evalCursor CURSOR FOR
SELECT grade1 FROM aksiologisi1 INNER JOIN evaluator 
ON aksiologisi1.evaluator_username = evaluator.evaluator_username 
INNER JOIN job ON evaluator.evaluator_username = job.evaluator
WHERE jobId = id AND eval_id = evaluator_id;

DECLARE evalCursor1 CURSOR FOR
SELECT grade2  FROM aksiologisi2 INNER JOIN evaluator
ON aksiologisi2.evaluator_username = evaluator.evaluator_username  
INNER JOIN job ON evaluator.evaluator_username = job.evaluator
WHERE jobId = id AND eval_id = evaluator_id;

DECLARE evalCursor2 CURSOR FOR
SELECT grade3 FROM aksiologisi3 INNER JOIN evaluator
ON aksiologisi3.evaluator_username = evaluator.evaluator_username 
INNER JOIN job ON evaluator.evaluator_username = job.evaluator
WHERE jobId = id AND eval_id = evaluator_id;



OPEN evalCursor;
OPEN evalCursor1;
OPEN evalCursor2;

FETCH evalCursor INTO vathmos1;
FETCH evalCursor1 INTO vathmos2;
FETCH evalCursor2 INTO vathmos3;
IF(vathmos1 IS NOT NULL AND vathmos2 IS NOT NULL AND vathmos3 IS NOT NULL)
THEN 
    SELECT vathmos1 , vathmos2 , vathmos3;
    SET @vathmos = vathmos1 + vathmos2 + vathmos3; /*dimiourgia tou telikou vathmou*/
    
    UPDATE evaluation_result 
    SET grade = @vathmos WHERE evaluator_name LIKE 'Vasilis';/*enimerwsi tou table > evaluation_result*/
    
    SELECT 'Evaluation Complete'; /*minima epitixias*/
 
 ELSE 
     SELECT 'Evaluation not completed yet'; /*minima apotuxias*/
END IF;

CLOSE evalCursor;
CLOSE evalCursor1;
CLOSE evalCursor2;
 
END$
DELIMITER ;
CALL ask3_2('1000','100');
SELECT @vathmos;   /*katatxorisi tou telikou vathmou*/



/*paizei gia tis times tou MinasB kai ChKal. Koitaw tin thesi tou update*/




DROP PROCEDURE IF EXISTS askhsh33;
DELIMITER $
CREATE PROCEDURE askhsh33(IN onoma_thesis VARCHAR(40))
BEGIN
DECLARE nf INT;
DECLARE usrnm VARCHAR(40);
DECLARE id INT;
DECLARE gr INT;
DECLARE ccursor CURSOR FOR SELECT evaluation_result.employee_username,evaluation_result.evaluation_id,evaluation_result.grade FROM job
INNER JOIN evaluation_result ON evaluation_result.job_id=job.id
WHERE job.position=onoma_thesis;
DECLARE continue handler for not found SET nf=1;
SET nf=0;
OPEN ccursor;
REPEAT
fetch ccursor into usrnm,id,gr;
IF (nf=0) THEN
IF (gr is not null) THEN
SELECT 'Oristikopoihmenoi pinkaes';
SELECT usrnm,id,gr order by usrnm desc;
IF (gr is null) THEN
SELECT 'Aksiologisi se ekseliksi... ekkremoun:';
SELECT count (id) WHERE gr LIKE '%null%' GROUP BY usrnm ORDER BY usrnm DESC;
SELECT'Aitiseis';
END IF;
ELSE
SELECT 'den yparxoun ypopsifioi';
END IF;
END IF;
UNTIL(nf=1)
END REPEAT;
CLOSE ccursor;
END $
DELIMITER ;
CALL askhsh33("Employee");












