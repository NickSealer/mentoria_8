-- Write a query to find the name (first_name, last name), department ID and name of all the employees

SELECT employees.FIRST_NAME, employees.LAST_NAME, departments.DEPARTMENT_ID, departments.DEPARTMENT_NAME
FROM employees
INNER JOIN departments ON departments.DEPARTMENT_ID = employees.DEPARTMENT_ID;