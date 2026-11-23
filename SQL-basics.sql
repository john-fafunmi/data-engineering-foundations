-- Lesson 8: A short note on NULLs

-- Exercise 1
SELECT *
FROM employees
LEFT JOIN buildings
    ON building_name = building
WHERE building IS NULL;

-- Exercise 2
SELECT *
FROM buildings
LEFT JOIN employees
    ON building_name = building
WHERE name IS NULL;
