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
-- Eldridge
-- Erbe
-- Erde
-- Erie
-- Etalle



-- Update your previous query to now find unique combinations of first and last name where the last name starts and ends with 'E'. You should get 846 rows.
--
-- Find the unique last names with a 'q' but not 'qu'. Your results should be:
--
--
-- Chleq
-- Lindqvist
-- Qiwen



-- Add a COUNT() to your results and use ORDER BY to make it easier to find employees whose unusual name is shared with others.
--



-- Update your query for 'Irena', 'Vidya', or 'Maya'. Use count(*) and GROUP BY to find the number of employees for each gender with those names. Your results should be:
--
--
-- 441 M
-- 268 F