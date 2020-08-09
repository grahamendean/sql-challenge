--* Use the information you have to create a table schema for each of the six CSV files. 
--Remember to specify data types, primary keys, foreign keys, and other constraints.
--Create 6 tables from the 6 csv files
	--departments
	--dept_emp
	--dept_manager
	--employees
	--salaries
	--titles
	
-----------------------------------
--departments
--1.)Drop table just in case
DROP TABLE departments;
--Create new table with primary keys
CREATE TABLE departments (
	dept_no VARCHAR(10),
	dept_name VARCHAR (25) NOT NULL,
	PRIMARY KEY (dept_no)
);
--View column
SELECT * FROM departments;

-------------------------------------
--employees
--2.)Drop table just in case
DROP TABLE employees;
--Create new table with primary keys
CREATE TABLE employees (
	emp_no INT NOT NULL,
	emp_title_id VARCHAR (10) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR (20) NOT NULL,
	last_name VARCHAR (20) NOT NULL,
	sex VARCHAR (2) NOT NULL,
	hire_date DATE NOT NULL,
	FOREIGN KEY (emp_title_id) REFERENCES titles (title_id),
	PRIMARY KEY (emp_no)
);
--View column
SELECT * FROM employees

---------------------------------------
--dept_emp
--3.)Drop table just in case
DROP TABLE dept_emp;

--Create new table with primary keys
CREATE TABLE dept_emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR (15) NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);
--View column
SELECT * FROM dept_emp;

---------------------------------------
--dept_manager
--4.)Drop table just in case
DROP TABLE dept_manager;
--Create new table with primary keys
CREATE TABLE dept_manager (
	dept_no VARCHAR (15) NOT NULL,
	emp_no INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);
--View column
SELECT * FROM dept_manager;

---------------------------------------
--salaries
--5.)Drop table just in case
DROP TABLE salaries;
--Create new table with primary keys
CREATE TABLE salaries (
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);
--View column
SELECT * FROM salaries;

---------------------------------------
--titles
--6.)Drop table just in case
DROP TABLE titles;
--Create new table with primary keys
CREATE TABLE titles (
	title_id VARCHAR (10),
	title VARCHAR (30),
	PRIMARY KEY (title_id)
);
--View column
SELECT * FROM titles;