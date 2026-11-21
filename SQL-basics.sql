Lesson 8:
SELECT * 
FROM employees
LEFT JOIN buildings
    ON building_name = building
WHERE building IS NULL
