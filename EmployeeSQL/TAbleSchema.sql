
drop table titles;
create table titles(
    title_id varchar,
    title varchar(25),
    PRIMARY KEY (title_id))
Select * from titles 

drop table departments;
create table departments(
    dept_no varchar(4),
    dept_name varchar(25),
    PRIMARY KEY (dept_no));
select * from departments

drop table employees;
create table employees(
    emp_no varchar(10),
    emp_title_id varchar(5),
    birth_date date,
    first_name varchar(20),
    last_name varchar(20),
    sex varchar(1),
    hire_date date,
    PRIMARY KEY (emp_no),
    FOREIGN KEY (emp_title_id) REFERENCES titles(title_id));
select * from employees 

drop table dept_manager;
create table dept_manager(
    dept_no varchar(4),
    emp_no varchar(10),
     FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	 FOREIGN KEY (emp_no) REFERENCES employees(emp_no));
select * from dept_manager

drop table dept_emp
create table dept_emp(
    emp_no varchar(10),
    dept_no varchar(8),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no));
select * from dept_emp

drop table salaries;
create table salaries(
    emp_no varchar(10),
    salary  int,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no));
select * from salaries 




