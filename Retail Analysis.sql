-- STRING FUNCTION
SELECT LENGTH('MEET');
SELECT *
FROM employee_demographics;
SELECT first_name, LENGTH(first_name)
FROM employee_demographics
ORDER BY 2;


SELECT upper('meet');
SELECT LOWER('MEET');

SELECT first_name, UPPER(first_name);

SELECT TRIM('    MEET    ');
SELECT LTRIM('   MEET    ');
SELECT RTRIM('   MEET    ')
FROM employee_demographics;

SELECT first_name, 
LEFT(first_name, 4)
FROM employee_demographics;

SELECT first_name, 
RIGHT(first_name, 4),
SUBSTRING(first_name, 3,1)
FROM employee_demographics;


SELECT first_name, REPLACE(first_name, 'a', 'z')
FROM employee_demographics;

SELECT LOCATE('X', 'mxet');

SELECT first_name, last_name,
CONCAT(first_name, '  ' , last_name)
FROM employee_demographics;

-- case statement
SELECT first_name,
last_name,
age,
CASE 
    WHEN age <= 30 THEN 'YOUNG'
    WHEN age BETWEEN 31 and 50 THEN 'OLD'
 END
 FROM employee_demographics;
 
 -- subqueries
 SELECT *
 FROM employee_demographics
 WHERE employee_id IN 
    ( SELECT employee_id
        FROM employee_salary
		WHERE dept_id = 1)
;


