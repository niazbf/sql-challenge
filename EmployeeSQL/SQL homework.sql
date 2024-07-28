List the employee number, last name, first name, sex, and salary of each employee.

SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees as e 
JOIN "Salaries" as s ON e.emp_no = s.emp_no;

List the first name, last name, and hire date for the employees who were hired in 1986.

SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date between '1/1/1986' AND '12/31/1986';

List the manager of each department along with their department number, department name, employee number, last name, and first name.

SELECT d.dept_no, d.emp_no, dd.dept_name, e.emp_no, e.first_name, e.last_name
FROM dept_manager as d
JOIN departments as dd ON d.dept_no = dd.dept_no
JOIN employees as e ON d.emp_no = e.emp_no;

List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

SELECT de.dept_no, e.emp_no, e.last_name, e.first_name, d.dept_name
FROM "Dept_emp" as de
JOIN employees as e ON de.emp_no = e.emp_no
JOIN departments as d ON de.dept_no = d.dept_no;

List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

SELECT e.first_name, e.last_name, e.sex
FROM employees as e
WHERE e.first_name = 'Hercules'
AND e.last_name LIKE 'B%';


List each employee in the Sales department, including their employee number, last name, and first name.

SELECT e.emp_no, e.last_name, e.first_name, dd.dept_name
FROM employees as e
JOIN "Dept_emp" as d ON e.emp_no = d.emp_no
JOIN departments as dd ON d.dept_no = dd.dept_no
WHERE dd.dept_name = 'Sales';

List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

SELECT e.emp_no, e.last_name, e.first_name, dd.dept_name
FROM employees as e
JOIN "Dept_emp" as d ON e.emp_no = d.emp_no
JOIN departments as dd ON d.dept_no = dd.dept_no
WHERE dd.dept_name = 'Sales' OR dd.dept_name = 'Development';


List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

SELECT last_name, COUNT(*) as frequency
FROM employees
GROUP BY last_name
ORDER BY frequency DESC;


