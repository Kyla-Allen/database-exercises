USE employees;

Select Distinct last_name from employees ORDER BY last_name DESC LIMIT 10;
select * from employees where hire_date BETWEEN '1989-12-31' and '2001-01-01' AND birth_date like '%-12-25' ORDER BY birth_date, hire_date DESC LIMIT 5 OFFSET 45;
