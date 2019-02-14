-- Write a query to display the department name, manager name, and city.

SELECT departments.DEPARTMENT_NAME, CONCAT(employees.FIRST_NAME, ' ', employees.LAST_NAME) AS 'MANAGER', locations.CITY 
FROM departments
LEFT JOIN employees ON departments.MANAGER_ID = employees.EMPLOYEE_ID
LEFT JOIN locations ON locations.LOCATION_ID = departments.LOCATION_ID
GROUP BY employees.DEPARTMENT_ID;