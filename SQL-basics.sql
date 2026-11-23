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

-- Lesson 9: A short note on expressions

-- Exercise 1
SELECT movies.title, (boxoffice.domestic_sales + boxoffice.international_sales) / 1000000 AS combined_sales
FROM movies
INNER JOIN boxoffice
    ON movies.id = boxoffice.movie_id;
-- Exercise 2
SELECT movies.title, (boxoffice.rating*10) AS rating_percentage
FROM movies
INNER JOIN boxoffice
    ON movies.id = boxoffice.movie_id;
-- Exercise 3
SELECT movies.title, movies.year
FROM movies
INNER JOIN boxoffice
    ON movies.id = boxoffice.movie_id
WHERE movies.year % 2 = 0;

-- Lesson 10: a short note on aggregates

-- Exercise 1
SELECT MAX(years_employed)
FROM employees
-- Exercise 2






