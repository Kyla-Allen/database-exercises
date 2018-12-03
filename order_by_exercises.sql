USE employees;

select * from employees WHERE first_name IN ('Irena', 'Vidya', 'Maya');
select * from employees where last_name LIKE 'E%';
select * from employees where hire_date BETWEEN '1989-12-31' and '2001-01-01';
select * from employees where birth_date LIKE '%-12-25';
select * from employees where last_name Like '%q%';


select * from employees where (first_name = 'Irena' OR first_name = 'Vidya' oR first_name = 'maya') and gender = 'M';
select * from employees where last_name like 'e%' or last_name like '%e';
select * from employees where last_name like 'e%' and last_name like '%e';
select * from employees where hire_date BETWEEN '1989-12-31' and '2001-01-01' AND birth_date like '%-12-25';
select * from employees where last_name like '%q%' AND last_name not like '%qu%';