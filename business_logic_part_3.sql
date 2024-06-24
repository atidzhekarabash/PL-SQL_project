

SELECT first_name, last_name,status FROM employee_status
WHERE status = 'Напусна';


SELECT first_name, last_name,status, date_d FROM employee_status
WHERE status = 'Майчинство';


SELECT first_name, last_name,status, date_d FROM employee_status
WHERE status = 'Неплатен отпуск'or status = 'Платен отпуск';

SELECT first_name, last_name, salary FROM employee
WHERE salary between 2000 and 3000;

SELECT first_name, last_name, salary FROM employee
WHERE salary = 2500;

SELECT first_name, last_name, salary FROM employee
WHERE salary = 3000;




SELECT * FROM EMPLOYEE;

UPDATE Employee
SET salary = 6000
WHERE emp_id = 14;

UPDATE Employee
SET salary = 6000
WHERE emp_id = 10;


UPDATE Employee
SET salary = 5000
WHERE emp_id = 17;

UPDATE Employee
SET salary = 2500
WHERE emp_id = 4;

UPDATE Employee
SET salary = 2500
WHERE emp_id = 22;

UPDATE Employee
SET salary = 3500
WHERE emp_id = 7;

SELECT first_name, last_name, salary FROM employee 
WHERE salary = 3500;


SELECT first_name, last_name, salary FROM employee 
WHERE salary = 5000;


SELECT first_name, last_name, mng_id FROM employee 
WHERE mng_id is null;


SELECT first_name, last_name, salary FROM employee 
WHERE salary > 5000
ORDER BY first_name DESC;


  SELECT first_name,salary, dep_id
	FROM employee
    WHERE dep_id = 1
    ORDER BY salary DESC
    FETCH FIRST 3 ROWS ONLY;
    
      SELECT first_name,salary, dep_id
	FROM employee
    WHERE dep_id = 2
    ORDER BY salary DESC
    FETCH FIRST 3 ROWS ONLY;
    
     SELECT first_name,salary, dep_id
	FROM employee
    WHERE dep_id = 3
    ORDER BY salary DESC
    FETCH FIRST 3 ROWS ONLY;
    
     SELECT first_name,salary, dep_id
	FROM employee
    WHERE dep_id = 4
    ORDER BY salary DESC
    FETCH FIRST 3 ROWS ONLY;
    
    
     SELECT first_name,salary, dep_id
	FROM employee
    WHERE dep_id = 5
    ORDER BY salary DESC
    FETCH FIRST 3 ROWS ONLY;
    
  
   SELECT dep_id, SUM(salary) AS "Total"
   FROM employee
   GROUP BY dep_id
   ORDER BY dep_id DESC;
  
  
  
  
  SELECT dep_id, ROUND(AVG(salary) ,0) AS "Rounded Avg.Salary"
   FROM employee
   GROUP BY dep_id
   ORDER BY dep_id;

	
    
 SELECT c.cust_id, c.first_name,c.last_name, a.balance
   FROM customer c JOIN account a
   ON c.cust_id = a.cust_id
  WHERE balance = 0
