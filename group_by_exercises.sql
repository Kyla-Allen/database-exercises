USE employees;


-- In your script, use DISTINCT to find the unique titles in the titles table. Your results should look like:

SELECT DISTINCT title from titles;



-- Find your query for employees whose last names start and end with 'E'.
-- Update the query find just the unique last names that start and end
-- with 'E' using GROUP BY. The results should be:


SELECT last_name from employees
 WHERE last_name like 'E%'
 AND last_name like '%e'
 GROUP BY last_name;




-- Update your previous query to now find unique combinations of first and last name
--  where the last name starts and ends with 'E'. You should get 846 rows.
--
SELECT last_name from employees
 WHERE last_name like 'E%'
 AND last_name like '%e'
 GROUP BY first_name, last_name;









-- Find the unique last names with a 'q' but not 'qu'. Your results should be:
--

SELECT last_name from employees
WHERE last_name like '%q%'
AND last_name not like '%qu%'
GROUP BY last_name;




-- Add a COUNT() to your results and use ORDER BY to make it easier to find employees whose unusual name is shared with others.
--
SELECT last_name, Count(last_name) from employees
WHERE last_name like '%q%'
AND last_name not like '%qu%'
GROUP BY last_name;



-- Update your query for 'Irena', 'Vidya', or 'Maya'. Use count(*)
-- and GROUP BY to find the number of employees for
-- each gender with those names. Your results should be:
-- 441 M
-- 268 F

SELECT count(*), gender from employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
GROUP BY gender
ORDER BY gender;