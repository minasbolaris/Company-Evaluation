***in PDF file , on the last page , is given an ER diagramma on primary level***

# Company-Evaluation 
Desciption:

This project is about a company evaluation, which has four(4) users categories. 1)Managers , 2)Evaluators , 3)Employees, 4)Administrators. 
Managers decide for the promotion job placements  and they will update employees' files , if changes are arised. 
Evaluators corporate with the company and announce job openings for the employees.
Employees apply a request for evaluation and for the placements , which employees can promote or move.
Administrators make the evaluation.

Evaluation:
 Every evaluation is the result of the summation of  three separate evaluations.1) Grade(0-4) based on an interview between Employee- Administrator 2)Grade(0-4) based on office r  report and 3)Grade(0-2) based on grade of employee's degree , letters of recommendation and project number. 

Job Application:
 The employees are updated from the evaluators for the job openings.
 
We should create a table that we catalog the movements from each category(managers , evaluators, employees, admnistrators. If some energies accomplish , the table will be updated.

In this project , we must create an ER diagramm ,  tables , inserts , store procedures and triggers. 

Store Procedures: 

1)We create a Store Procedure that,  it is appeared all requests from each evaluator , evaluators' names and lastnames and the grades of every assessment.

2)We create a Store Procedure that, which it is given one ID and one evaluator's ID and if there are three grades on assessments , this store procedure will check them. If evaluations are completed , store procedure prints a message and  the table ,which is called, evaluation_result is updated ,automatically. 

3)We create a Store Procedure , which it is  opened a free job. If the evaluations are completed , then is printed the following message: "Tables are confirmed" and all the candidates with their grades on the wane.
If not , then is printed the following message: "Evaluation in process".

Triggers:

1)We create a trigger. When we try to update some data. Although the data like AFM, DOY and  names will be kept their previous numbers.
2) We create a trigger , which allows to the administrator  to change  personals profiles of evaluators , managers and employees . If someone else try to  change the profiles, will be printed an Error Message! 
