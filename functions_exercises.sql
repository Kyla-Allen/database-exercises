USE employees;

select concat(first_name, ' ', last_name) from employees where last_name LIKE 'E%' AND last_name LIKE '%e' ORDER BY emp_no DESC ;


select datediff(current_date (), hire_date) from employees where hire_date
BETWEEN '1989-12-31' and '2001-01-01' AND birth_date like '%-12-25'
ORDER BY birth_date, hire_date DESC;





