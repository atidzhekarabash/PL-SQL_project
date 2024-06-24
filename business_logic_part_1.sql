
SELECT dep_name from Department;

SELECT first_name, last_name, salary FROM  Employee;

SELECT first_name, last_name, LOWER(first_name || '.' || last_name) || '@bankoftomarow.bg' AS "additional email" FROM Employee;


SELECT first_name, hire_date from Employee
where CURRENT_DATE - hire_date > 1825
ORDER BY hire_date;


SELECT first_name from Employee
where first_name like 'С%';



SELECT * FROM Employee
WHERE address != 'България';


SELECT * FROM Employee
WHERE first_name like '%и%' or last_name like '%и%' 






