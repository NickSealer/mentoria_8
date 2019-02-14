-- Write a query to get the department name and number of employees in the department

SELECT departments.DEPARTMENT_NAME, COUNT(employees.EMPLOYEE_ID) AS 'EMP_QUANTITY'
FROM departments 
INNER JOIN employees ON departments.DEPARTMENT_ID = employees.DEPARTMENT_ID 
GROUP BY departments.DEPARTMENT_NAME;