SELECT first_name, last_name
FROM employees
WHERE birth_date BETWEEN '1952-01-01' AND '1955-12-31';

--query that will search for only 1952 birth dates
SELECT first_name, last_name,birth_date
FROM employees
WHERE birth_date BETWEEN '1952-01-01' AND '1952-12-31';

--Create three more queries to search for employees who were born in 1953, 1954, and 1955.
SELECT first_name, last_name,birth_date
FROM employees
WHERE birth_date BETWEEN '1953-01-01' AND '1953-12-31';


SELECT first_name, last_name,birth_date
FROM employees
WHERE birth_date BETWEEN '1954-01-01' AND '1954-12-31';



SELECT first_name, last_name,birth_date
FROM employees
WHERE birth_date BETWEEN '1955-01-01' AND '1955-12-31';

--This time, we're looking for employees born between 1952 and 1955, who were also hired between 1985 and 1988
-- Retirement eligibility
SELECT first_name, last_name
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');

-- Number of employees retiring
SELECT COUNT(first_name)
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');

SELECT first_name, last_name
INTO retirement_info
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');

SELECT * FROM retirement_info;
