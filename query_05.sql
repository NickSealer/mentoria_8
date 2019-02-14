-- Write a query to find the name (first_name, last_name) and hire date of the employees who was hired after 'Jones'.

SELECT FIRST_NAME, LAST_NAME, HIRE_DATE 
FROM employees 
WHERE HIRE_DATE > (SELECT HIRE_DATE FROM employees WHERE LAST_NAME = 'JONES');