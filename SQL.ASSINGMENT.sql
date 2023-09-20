CREATE DATABASE INDUSTRIES;
USE INDUSTRIES;
CREATE TABLE EMPLOYEES 
(
EMP_ID INT auto_increment primary KEY,
EMP_NAME varchar (15),
EMP_AGE INT,
EMP_DOJ DATE,
EMP_SALARY int,
EMP_PROFETION varchar (15),
DEPT_NO INT (20),
DEPT_NAME varchar (20),
DEPT_AREA varchar(18)
);

SELECT EMP_DOJ, EMP_NAME
FROM EMPLOYEES;
SELECT EMP_DOJ, EMP_NAME, DEPT_NAME,EMP_PROFETION
FROM EMPLOYEES
WHERE EMP_PROFETION IN ("CLERK");

select emp_name, emp_salary
from employees
where emp_salary>20000;

select emp_name, emp_salary
from employees
where EMP_SALARY<20000;

select emp_name, emp_doj 
from employees
order by emp_doj;

select emp_name, emp_salary
from employees
order by EMP_SALARY desc;

alter table employees 
add ename varchar (10);

alter table employees 
drop ename;

alter table employees 
add commission int;

select emp_name, dept_no, emp_salary
from employees
where commission and emp_salary
order by emp_salary desc;

alter table employees
add emp_lastname varchar (10) after emp_name;

alter table employees
drop emp_lastname;

select emp_lastname, emp_profetion
from employees
where emp_profetion in ("manager");

select emp_lastname, emp_profetion, emp_salary
from employees
where EMP_PROFETION = "sales" or "clerk";

select emp_lastname, emp_profetion, emp_salary
from employees
where emp_salary!=25000 and 35000 and 50000;

select max(emp_salary)
from employees;

select max(commission)
from employees;

select min(emp_salary)
from employees;

select min(commission)
from employees;

select avg(commission)
from employees;

select avg(emp_salary)
from employees;

select dept_no, emp_salary, commission
from employees
where dept_name in ("sales", "finance", "hr", "marketing");

select count("emp_name, dept_no")
from employees;

select dept_no, emp_salary
from employees;

select emp_name as f_name, emp_id as emp_name
from employees;

select sum(emp_salary)
from employees
where EMP_PROFETION in ("manager");

select count(EMP_PROFETION)
from employees
where EMP_PROFETION = "manager";

select emp_name from employees where commission is null;
select emp_name, emp_id, commission, case
when commission is not null then "yess"
else "no commission"
end as "description"
from employees;


















