-- Write a query to display the job title and average salary of employees.

SELECT jobs.JOB_TITLE, AVG(employees.SALARY)'AVERAGE SALARY' 
FROM employees 
INNER JOIN jobs ON employees.JOB_ID = jobs.JOB_ID 
GROUP BY jobs.JOB_TITLE;