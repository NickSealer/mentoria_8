-- Write a query to display the department ID and name and first name of manager.

SELECT DISTINCT departments.DEPARTMENT_ID, departments.DEPARTMENT_NAME, employees.FIRST_NAME
FROM departments
LEFT JOIN employees ON departments.MANAGER_ID = employees.EMPLOYEE_ID 
ORDER BY departments.MANAGER_ID, departments.DEPARTMENT_NAME;