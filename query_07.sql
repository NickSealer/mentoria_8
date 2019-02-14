-- Write a query to find the employee ID, job title, number of days between ending date and starting date for all jobs in department 90.

SELECT employees.EMPLOYEE_ID, jobs.JOB_TITLE, DATEDIFF(job_history.END_DATE, job_history.START_DATE) AS 'DATE_DIFF'
FROM jobs 
INNER JOIN employees ON employees.JOB_ID = jobs.JOB_ID 
INNER JOIN job_history ON job_history.EMPLOYEE_ID = employees.EMPLOYEE_ID 
WHERE employees.DEPARTMENT_ID = 90;