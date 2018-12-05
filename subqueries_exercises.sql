USE employees;

Select concat(first_name, ' ', last_name) as Employee
FROM employees
WHERE hire_date in (
  SELECT hire_date
  FROM employees
  WHERE emp_no = 101010
);

SELECT title as 'TITLE', Count(title) as 'PEOPLE WITH THAT TITLE'
FROM titles
WHERE emp_no in (
  SELECT emp_no
  FROM employees
  WHERE first_name = 'Aamod'
)
GROUP BY title;

SELECT first_name, last_name
FROM employees
WHERE emp_no in (
  SELECT emp_no
  FROM dept_manager
  WHERE to_date > now()
)
AND gender = 'F';

-- BONUS

-- Find all the department names that currently have female managers.
SELECT dept_name
FROM departments
WHERE dept_no in (
  SELECT dept_no
  FROM dept_manager
  WHERE emp_no in (
    SELECT emp_no
    FROM employees
    WHERE gender = 'F'
  )
  AND to_date > Now()
);
