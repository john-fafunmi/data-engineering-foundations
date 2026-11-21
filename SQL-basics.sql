Lesson 8: Exercise 1
SELECT * 
FROM employees
LEFT JOIN buildings
    ON building_name = building
WHERE building IS NULL
Lesson 8: Exercise 2
SELECT * 
FROM buildings
LEFT JOIN employees
    ON building_name = building
WHERE building IS NULL
