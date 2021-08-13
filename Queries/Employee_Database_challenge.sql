-- MODULE 7 CHALLENGE
-- DELIVERABLE 1 - Number of Retiring Employees by Title
-- 1.1 to 1.5 Join employees and title_retire at emp_no
-- filter birth_date to retrieve employees born between 1952 and 1955,
-- and order the new table by emp_no
SELECT emp.emp_no,
	emp.first_name,
emp.last_name,
	tt.title,
	tt.from_date,
	tt.to_date
INTO retirement_titles
FROM employees as emp
INNER JOIN titles as tt
ON emp.emp_no = tt.emp_no
WHERE (emp.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no;

-- 1.9 to 1.12 Use Dictinct ON with Order BY to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title
INTO unique_titles
FROM retirement_titles
ORDER BY emp_no ASC, to_date DESC;


-- 1.15 to 1.18 Retrieve the number of employees who are about to retire 
-- by their most recent job title
-- Solution via discussion with TA Sunny Patel on Slack Aug 12-2021
SELECT COUNT(title), title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY COUNT(title) DESC;

-- DELIVERABLE 2 - Employees Eligible for the Mentorship Program
-- 2.1 to 2.9 Create a new table that displays mentorship eligibility
SELECT DISTINCT ON (emp.emp_no) emp.emp_no,
emp.first_name,
emp.last_name,
emp.birth_date,
de.from_date,
de.to_date,
tt.title
INTO mentorship_eligibility
FROM employees as emp
LEFT JOIN dept_emp as de
ON emp.emp_no = de.emp_no
LEFT JOIN titles as tt
ON de.emp_no = tt.emp_no
WHERE de.to_date = ('9999-01-01')
AND (emp.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY emp.emp_no ASC