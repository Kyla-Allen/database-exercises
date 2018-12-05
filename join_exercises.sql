-- SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
-- FROM employees as e
-- JOIN dept_emp as de
--   ON de.emp_no = e.emp_no
-- JOIN departments as d
--   ON d.dept_no = de.dept_no
-- WHERE de.to_date = '9999-01-01' AND e.emp_no = 10001;
USE employees;


SELECT departments.dept_name as 'DEPARTMENT NAME', CONCAT(employees.first_name, ' ', employees.last_name) as 'DEPARTMENT MANAGER'
FROM departments
JOIN dept_manager on dept_manager.dept_no = departments.dept_no
JOIN employees on employees.emp_no = dept_manager.emp_no
WHERE dept_manager.to_date > NOW()
ORDER BY departments.dept_name;

SELECT departments.dept_name as 'DEPARTMENT NAME', CONCAT(employees.first_name, ' ', employees.last_name) as 'MANAGER NAME'
FROM departments
JOIN dept_manager on dept_manager.dept_no = departments.dept_no
JOIN employees on employees.emp_no = dept_manager.emp_no
WHERE dept_manager.to_date > NOW() and employees.gender = 'F'
ORDER BY departments.dept_name;

SELECT titles.title as 'TITLE', COUNT(*) as 'COUNT'
FROM titles
JOIN dept_emp on dept_emp.emp_no = titles.emp_no
WHERE dept_no = 'd009' and titles.to_date > now()
GROUP BY title;
