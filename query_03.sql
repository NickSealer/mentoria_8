-- Write a query to find the name (first_name, last_name), job, department ID and name of the employees who works in London.

SELECT employees.FIRST_NAME, employees.LAST_NAME, JOB_TITLE, departments.DEPARTMENT_ID
FROM employees
INNER JOIN jobs ON jobs.JOB_ID = employees.JOB_ID
INNER JOIN departments ON departments.DEPARTMENT_ID = employees.DEPARTMENT_ID
INNER JOIN locations ON locations.LOCATION_ID = departments.LOCATION_ID
WHERE locations.CITY = 'London';