# SQL Homework - Employee Database: A Mystery in Two Parts

## Background

I completed this project on employees of a corporation from the 1980s and 1990s. All that remain of the database of employees from that period are six CSV files.

In this assignment, I designed the tables to hold data in the CSVs, import the CSVs into a SQL database, and answer questions about the data. 

#### Data Modeling

* Inspected the CSVs and sketched out an ERD of the tables. 

#### Data Engineering

* Used the information to create a table schema for each of the six CSV files. I included the data types, primary keys, foreign keys, and other constraints.

* Imported each CSV file into the corresponding SQL table.

#### Data Analysis

I performed some Data Analysis on the following;

1. List the following details of each employee: employee number, last name, first name, sex, and salary.

2. List first name, last name, and hire date for employees who were hired in 1986.

3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

4. List the department of each employee with the following information: employee number, last name, first name, and department name.

5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.


* Then I imported the SQL database into Pandas to create the following:

1. Created a histogram to visualize the most common salary ranges for employees.

2. Created a bar chart of average salary by title.

