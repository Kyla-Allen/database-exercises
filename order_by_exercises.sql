USE employees;

select * from employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') Order by last_name DESC, first_name DESC;
select * from employees where last_name LIKE 'E%' ORDER BY emp_no DESC;
select * from employees where hire_date BETWEEN '1989-12-31' and '2001-01-01' AND birth_date like '%-12-25' ORDER BY birth_date DESC, hire_date DESC;





