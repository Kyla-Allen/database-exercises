USE employees;

select * from employees WHERE first_name IN ('Irena', 'Vidya', 'Maya');
select * from employees where last_name LIKE 'E%';
select * from employees where hire_date BETWEEN 1899 and 2001;--FIX THIS
select * from employees where birth_date LIKE '%-12-25';
select * from employees where last_name Like '%q%';


select * from employees where first_name = 'Irena' OR first_name = 'Vidya' oR first_name = 'maya' and gender = 'M';