-- Write a query to display department name, name (first_name, last_name), hire date, salary of the manager for all managers whose experience is more than 15 years.

SELECT departments.DEPARTMENT_NAME, CONCAT(employees.FIRST_NAME, ' ', employees.LAST_NAME) AS 'MANAGER', 
employees.HIRE_DATE, employees.SALARY, TIMESTAMPDIFF(YEAR, employees.HIRE_DATE, CURDATE()) AS 'AÑOS', job_history.JOB_ID
FROM employees
INNER JOIN departments ON departments.MANAGER_ID = employees.EMPLOYEE_ID
INNER JOIN job_history ON job_history.EMPLOYEE_ID = employees.EMPLOYEE_ID;
