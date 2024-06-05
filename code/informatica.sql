-- 29.5.24--
alter TABLE customer (
    customer_id INT PRIMARY KEY,
    cust_first_name VARCHAR2(30),
    cust_last_name VARCHAR2(30),
    cust_phone_no INT,
    cust_email_id VARCHAR2(50),
    order_id INT
);
ALTER TABLE customerdata RENAME COLUMN cust_full_name TO cust_first_name;


INSERT INTO customer (customer_id, cust_first_name, cust_last_name, cust_phone_no, cust_email_id, order_id) 
VALUES (1, 'John', 'Doe', 1234567890, 'johndoe@example.com', 1001);

INSERT INTO customer (customer_id, cust_first_name, cust_last_name, cust_phone_no, cust_email_id, order_id) 
VALUES (2, 'Jane', 'Smith', 2345678901, 'janesmith@example.com', 1002);

INSERT INTO customer (customer_id, cust_first_name, cust_last_name, cust_phone_no, cust_email_id, order_id) 
VALUES (3, 'Mike', 'Johnson', 3456789012, 'ikejohnson@example.com', 1003);

INSERT INTO customer (customer_id, cust_first_name, cust_last_name, cust_phone_no, cust_email_id, order_id) 
VALUES (4, 'Sara', 'Brown', 4567890123, 'arabrown@example.com', 1004);

INSERT INTO customer (customer_id, cust_first_name, cust_last_name, cust_phone_no, cust_email_id, order_id) 
VALUES (5, 'David', 'Williams', 5678901234, 'davidwilliams@example.com', 1005);

CREATE TABLE customerdata (
    customer_id INT PRIMARY KEY,
    cust_full_name VARCHAR2(30),
    cust_last_name VARCHAR2(30),
    cust_phone_no INT,
    cust_email_id VARCHAR2(50),
    order_id INT
);

select * from customerdata


truncate table customerdata


--31.5.24--
CREATE TABLE customerdetails (
    customer_id INT PRIMARY KEY,
    cust_full_name VARCHAR2(30),
    cust_phone_no INT,
    cust_email_id VARCHAR2(50),
    order_id INT
);



select * from customer
select * from customerdata
select * from customerdetails

truncate table customerdetails



-- 3.6.24--

create table org_employee_dept1(emp_id int, emp_full_name varchar2(50), emp_salary int, dept_id int);
create table org_employee_dept2(emp_id int, emp_full_name varchar2(50), emp_salary int, dept_id int);
create table org_employee_dept3(emp_id int, emp_full_name varchar2(50), emp_salary int, dept_id int);

create table org_employee_default(emp_id int, emp_full_name varchar2(50), emp_salary int, dept_id int);
commit;

select * from org_employee_dept3
select * from employees where department_id=30;
select * from employees
truncate table org_employee_default


--4.6.2024--
create table org_employee_data(emp_id int, emp_full_name varchar2(50), emp_salary int, dept_id int);
ALTER TABLE org_employee_data MODIFY emp_full_name VARCHAR2(100);
select * from org_employee_data


--5.6.2024 aggregator transformation--
create table dept_salary(dept_id int, sum_dept_salary int);

SELECT * FROM dept_salary
order by dept_id asc;

select * from employees 
--joining, master,full. detais--
CREATE TABLE SUBJECTS(SUBJECT_ID INT, SUBJECT_NAME VARCHAR(30));
INSERT INTO SUBJECTS VALUES (1, 'MATHS');
INSERT INTO SUBJECTS VALUES (2,'CHEMISTRY');
INSERT INTO SUBJECTS VALUES (3, 'PHYSICS');
truncate table subjects
CREATE TABLE STUDENTS(STUDENT_ID INT, SUBJECT_ID INT);
INSERT INTO STUDENTS VALUES(10,1);
INSERT INTO STUDENTS VALUES (20,2);
INSERT INTO STUDENTS VALUES (30,NULL);

select * from students_rec
truncate table students_rec

CREATE TABLE STUDENT_REC(SUBJECT_ID INT,STUDENT_ID INT,SUBJECT NAME VARCHAR(30));

--rank trans--
create table employee_rank(emp_id int, dept_id int, salary int, rank int);
select * from employee_rank

--sequence transformation--
create table employee_sequence_number(sr_no int,emp_id int, dept_id int, salary int);
select * from employee_sequence_number