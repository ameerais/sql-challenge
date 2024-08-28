-- Table 1: Employees
CREATE TABLE Employees (
    emp_no INT PRIMARY KEY,
    emp_title VARCHAR(50) NOT NULL,
    birth_date DATE NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    sex CHAR(1) NOT NULL,
    hire_date DATE NOT NULL
);

-- Table 2: Department
CREATE TABLE Department (
    dept_no INT PRIMARY KEY,
    dept_name VARCHAR(50) NOT NULL,
    emp_no INT,
    FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
);

-- Table 3: Department_employees
CREATE TABLE Department_employees (
    dept_emp_no INT PRIMARY KEY,
    emp_no INT,
    FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
);

-- Table 4: Department_manager
CREATE TABLE Department_manager (
    dept_manager_no INT PRIMARY KEY,
    emp_no INT,
    dept_no INT,
    FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES Department(dept_no)
);

-- Table 5: Salary
CREATE TABLE Salary (
    salary_no INT PRIMARY KEY,
    emp_no INT,
    salary DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
);

-- Table 6: Title
CREATE TABLE Title (
    title_id INT PRIMARY KEY,
    title VARCHAR(50) NOT NULL,
    emp_no INT,
    FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
);
