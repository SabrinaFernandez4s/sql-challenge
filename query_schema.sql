--Data Analysis portion
-- Code for #1
SELECT employees.emp_no,
last_name,
first_name,
sex
FROM employees
INNER JOIN salaries ON salaries.emp_no = employees.emp_no;

-- Code for #2
SELECT first_name,
last_name,
hire_date
FROM employees
WHERE hire_date BETWEEN '01/01/1986' AND '12/31/1986';

-- Code for #3
SELECT employees.emp_no,
first_name,
last_name,
departments.dept_no,
departments.dept_name
FROM employees
INNER JOIN dept_manager ON dept_manager.emp_no = employees.emp_no
INNER JOIN departments ON departments.dept_no = dept_manager.dept_no;

-- Code for #4
SELECT employees.emp_no,
first_name,
last_name,
departments.dept_no,
departments.dept_name
FROM employees
INNER JOIN dept_emp ON dept_emp.emp_no = employees.emp_no
INNER JOIN departments ON departments.dept_no = dept_emp.dept_no;

-- Code for #5
SELECT sex,
first_name,
last_name
FROM employees
WHERE first_name='Hercules' AND last_name LIKE 'B%';

-- Code for #6
SELECT employees.emp_no,
first_name,
last_name
FROM employees
INNER JOIN dept_emp ON dept_emp.emp_no = employees.emp_no
WHERE dept_no = 'd007'

-- Code for #7
SELECT employees.emp_no,
first_name,
last_name
FROM employees
INNER JOIN dept_emp ON dept_emp.emp_no = employees.emp_no
WHERE dept_no = 'd005' OR dept_no = 'd007'

-- Code for #8
SELECT last_name, COUNT(last_name)
FROM employees
GROUP BY last_name
HAVING COUNT(last_name) > 1
ORDER BY count DESC;