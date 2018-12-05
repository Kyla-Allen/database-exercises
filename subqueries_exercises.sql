USE employees;

Select concat(first_name, ' ', last_name) as Employee
FROM employees
WHERE hire_date in (
  SELECT hire_date
  FROM employees
  WHERE emp_no = 101010
);