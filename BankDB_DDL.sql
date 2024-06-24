CREATE TABLE Employee(
      emp_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY, 
      first_name VARCHAR(40) NOT NULL,
      last_name VARCHAR(40) NOT NULL,
      additional_name VARCHAR(40),
      address VARCHAR(50),
      email VARCHAR(50) NOT NULL,
      phone VARCHAR(40) NOT NULL,
      job_desc VARCHAR2(40),
      dep_id INT,
      mng_id INT,
      
     CONSTRAINT fk_department  FOREIGN KEY (dep_id)
  REFERENCES department(dep_id)
);


ALTER TABLE Employee
ADD salary NUMBER(6,2) NOT NULL


ALTER TABLE Employee
ADD hire_date DATE NOT NULL


ALTER TABLE Employee
ADD status VARCHAR(50)

CREATE TABLE Department(
  dep_id INT PRIMARY KEY,
  dep_name VARCHAR(20),
  dep_desc VARCHAR(30)
 
);

ALTER TABLE Department
MODIFY dep_name VARCHAR(50)


ALTER TABLE Department
MODIFY dep_desc VARCHAR(50)


DROP TABLE Department
DROP TABLE Employee
DROP TABLE Customer
DROP TABLE Account

CREATE TABLE Customer( 
      cust_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
      first_name VARCHAR(20) NOT NULL,
      last_name VARCHAR(20) NOT NULL,
      additional_name VARCHAR(20),
      address VARCHAR(50),
      email VARCHAR(50) NOT NULL,
      phone VARCHAR(20) NOT NULL
      );

CREATE TABLE Account(

    account_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    account_number VARCHAR(30) UNIQUE NOT NULL,
    currency VARCHAR2(3),
    amount NUMBER NOT NULL,
    cust_id INT,
  CONSTRAINT customer_fk
  FOREIGN KEY (cust_id)
  REFERENCES customer(cust_id)

);

ALTER TABLE Account
ADD account_name VARCHAR(60)

CREATE TABLE employee_migration(
    id int GENERATED AS IDENTITY,
    job_changed VARCHAR2(40),
    old_job_position VARCHAR2(40),
    new_job_position VARCHAR2(40),
    hire_date date,
    date_mgr DATE,
    first_name VARCHAR(40),
    last_name VARCHAR(40),
    emp_id INT
    
   );
 
 
 CREATE TABLE employee_status(
    id int GENERATED AS IDENTITY,
    first_name VARCHAR(40),
    last_name VARCHAR(40),
    emp_id INT,
    status VARCHAR2(50),
    date_d DATE
);
 

 

 




