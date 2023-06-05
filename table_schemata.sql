DROP TABLE departments, titles, employees, dept_emp, dept_manager, salaries;

-- Create and view departments table
CREATE TABLE departments (
	dept_no VARCHAR(4) Primary Key NOT NULL,
	dept_name VARCHAR(50) NOT NULL
);

SELECT * FROM departments;

-- Create and view titles table
CREATE TABLE titles(
	title_id VARCHAR(5) Primary Key NOT NULL,
	title VARCHAR(50) NOT NULL
);

SELECT * FROM titles;

-- Create and view employees table
CREATE TABLE employees(
	emp_no INT Primary Key NOT NULL,
	emp_title_id VARCHAR(5) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	sex VARCHAR(1),
	hire_date DATE NOT NULL,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

SELECT * FROM employees;

-- Create and view dept_manager table
CREATE TABLE dept_manager(
	dept_no VARCHAR(4) NOT NULL,
	emp_no INT NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

SELECT * FROM dept_manager;

-- Create and view dept_emp table
CREATE TABLE dept_emp(
	emp_no INT NOT NULL,
	dept_no VARCHAR(4) NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

SELECT * FROM dept_emp;

-- Create and view salaries table
CREATE TABLE salaries(
	emp_no INT NOT NULL,
	salary MONEY NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

SELECT * FROM salaries;
