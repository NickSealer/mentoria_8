-- Write a query to display the job history that were done by any employee who is currently drawing more than 10000 of salary.

SELECT job_history.* 
FROM employees 
INNER JOIN job_history ON employees.EMPLOYEE_ID = job_history.EMPLOYEE_ID 
WHERE employees.SALARY > 10000;