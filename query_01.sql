-- Write a query to find the addresses (location_id, street_address, city, state_province, country_name) of all the departments.

SELECT locations.LOCATION_ID ,STREET_ADDRESS, CITY, STATE_PROVINCE, COUNTRY_NAME
FROM departments 
LEFT JOIN locations ON locations.LOCATION_ID = departments.LOCATION_ID
LEFT JOIN countries ON countries.COUNTRY_ID = locations.COUNTRY_ID;