-- Write a query to display job title, employee name, and the difference between salary of the employee and minimum salary for the job.

SELECT jobs.JOB_TITLE, CONCAT(employees.FIRST_NAME, ' ', employees.LAST_NAME) AS 'EMP_NAME', employees.SALARY, jobs.MIN_SALARY, (employees.SALARY - jobs.MIN_SALARY)'SALARY_DIFF'
FROM employees 
INNER JOIN jobs ON employees.JOB_ID = jobs.JOB_ID;