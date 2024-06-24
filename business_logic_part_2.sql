CREATE OR REPLACE TRIGGER employee_migration_trigger
AFTER UPDATE
   ON Employee
   FOR EACH ROW
   

BEGIN
 INSERT INTO employee_migration
   ( job_changed,
    old_job_position,
    new_job_position,
   hire_date ,
    date_mgr ,
    first_name,
    last_name,
    emp_id)
   VALUES
   ( 'New job_position ',
     :old.job_desc,
     :new.job_desc,
     :old.hire_date,
     :new.hire_date,
     :old.first_name,
     :old.last_name,
     :old.emp_id);

 END;
 
 


UPDATE Employee
SET job_desc = 'Банков касиер', dep_id = 4, hire_date = to_date( 'August 06, 2022', 'MONTH DD, YYYY' )
WHERE emp_id = 2;


UPDATE Employee
SET job_desc = 'Оператор', dep_id = 1, hire_date = to_date( 'February 02, 2023', 'MONTH DD, YYYY' )
WHERE emp_id = 2;



UPDATE Employee
SET job_desc = 'Банков касиер', dep_id = 4, hire_date = to_date( 'May 02, 2018', 'MONTH DD, YYYY' )
WHERE emp_id = 16;

UPDATE Employee
SET job_desc = 'Оператор', dep_id = 1, hire_date = to_date( 'June 19, 2020', 'MONTH DD, YYYY' )
WHERE emp_id = 16;

UPDATE Employee
SET job_desc = 'Кредитен анализатор', dep_id = 2, hire_date = to_date( 'January 01, 2023', 'MONTH DD, YYYY' )
WHERE emp_id = 16;

UPDATE Employee
SET job_desc = 'Банков касиер', dep_id = 4, hire_date = to_date( 'January 27, 2023', 'MONTH DD, YYYY' )
WHERE emp_id = 16;

UPDATE Employee
SET job_desc = 'Финансов мениджър', dep_id = 3, hire_date = to_date( 'March 05, 2023', 'MONTH DD, YYYY' )
WHERE emp_id = 16;


UPDATE Employee
SET job_desc = 'Оператор', hire_date = to_date( 'December 20, 2018', 'MONTH DD, YYYY' )
WHERE emp_id = 21;

UPDATE Employee
SET job_desc = 'Кредитен анализатор',dep_id = 4, hire_date = to_date( 'March 01, 2022', 'MONTH DD, YYYY' )
WHERE emp_id = 21;



select emp.first_name,emp.last_name,  m.date_mgr
from employee emp inner join employee_migration m
on emp.emp_id = m.emp_id
where  date_mgr > add_months(sysdate, -2);


select emp.first_name, emp.last_name, emp.job_desc, emp.dep_id
from employee emp left join employee_migration m
on emp.emp_id = m.emp_id
where m.emp_id is null;















