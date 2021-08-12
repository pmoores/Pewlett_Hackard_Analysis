--1.1 and 1.3 Retrieve emp_no, first_name, last_name from employees table
SELECT emp_no, first_name, last_name
FROM employees;

--1.2 and 1.3 Retrieve title, from_date, to_date from title table
-- and store in title_retire
SELECT emp_no, title, from_date, to_date
INTO title_retire
FROM titles;

-- 1.4 and 1.5 Join employees and title_retire at emp_no,
-- filter birth_date to retrieve employees born between 1952 and 1955,
-- and order the new table by emp_no
SELECT emp.emp_no,
	emp.first_name,
emp.last_name,
	tr.title,
	tr.from_date,
	tr.to_date
INTO retirement_titles
FROM employees as emp
LEFT JOIN title_retire as tr
ON emp.emp_no = tr.emp_no
WHERE (emp.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no;

-- 1.9 Retrieve emp_no, first_name, last_name and title from retirement titles
SELECT emp_no, first_name, last_name, title
FROM retirement_titles;

-- 1.10 Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title
INTO unique_titles
FROM retirement_titles
ORDER BY emp_no ASC;
