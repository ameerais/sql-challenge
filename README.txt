Data Modeling, Engineering, and Analysis using SQL

This project involves creating a database schema and performing data analysis using SQL. The tasks include defining table schemas, inserting data, and running various queries to analyze the data.

Project Overview
The project is divided into three main parts:

Data Modeling: Defining an Entity-Relationship Diagram (ERD) for the given tables.
Data Engineering: Creating table schemas with appropriate data types, primary keys, foreign keys, and constraints.
Data Analysis: Writing SQL queries to retrieve and manipulate data based on specific requirements.
Table Schemas
The following tables are created in the database:

Employees

Attributes: emp_no, emp_title, birth_date, first_name, last_name, sex, hire_date
Primary Key: emp_no
Department

Attributes: dept_no, dept_name, emp_no
Primary Key: dept_no
Foreign Key: emp_no references Employees(emp_no)
Department_employees

Attributes: dept_emp_no, emp_no
Primary Key: dept_emp_no
Foreign Key: emp_no references Employees(emp_no)
Department_manager

Attributes: dept_manager_no, emp_no, dept_no
Primary Key: dept_manager_no
Foreign Keys: emp_no references Employees(emp_no), dept_no references Department(dept_no)
Salary

Attributes: salary_no, emp_no, salary
Primary Key: salary_no
Foreign Key: emp_no references Employees(emp_no)
Title

Attributes: title_id, title, emp_no
Primary Key: title_id
Foreign Key: emp_no references Employees(emp_no)
Data Analysis Queries
Below are the SQL queries provided for data analysis:

List the employee number, last name, first name, sex, and salary of each employee:

Retrieves employee details along with their salaries.
List the first name, last name, and hire date for the employees who were hired in 1986:

Filters employees based on the year they were hired.
List the manager of each department along with their department number, department name, employee number, last name, and first name:

Joins Department_manager, Employees, and Department tables to display department managers.
List the department number for each employee along with that employee’s employee number, last name, first name, and department name:

Joins Department_employees, Employees, and Department tables to get department details for each employee.
List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B:

Filters employees with specific names.
List each employee in the Sales department, including their employee number, last name, and first name:

Filters employees working in the Sales department.
List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name:

Filters employees working in the Sales and Development departments.
List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name):

Counts the occurrences of each last name among the employees and orders them in descending order.
How to Use
Create the Database Schema: Run the SQL script provided in the schema.sql file to create the tables with their respective schemas.

Insert Sample Data: Populate the tables with sample data using the INSERT statements provided in the SQL script.

Run Data Analysis Queries: Use the SQL queries provided to analyze the data and generate insights as required.

Requirements
A relational database management system (RDBMS) such as MySQL, PostgreSQL, or SQL Server.
SQL editor or command-line tool to execute SQL commands.
Contact:
Name: Ameera Ismail
Email address: ameeraismail040@gmail.com