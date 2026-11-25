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

-- Lesson 10: A short note on aggregates

-- Exercise 1
SELECT MAX(years_employed)
FROM employees;

-- Exercise 2
SELECT role, AVG(years_employed) AS average_years
FROM employees
GROUP BY role;

-- Exercise 3
SELECT building, SUM(years_employed) AS total_years_employed
FROM employees
GROUP BY building;

-- Lesson 11: A short note on aggregates pt 2

-- Exercise 1
SELECT role, COUNT(*) AS total_artists
FROM employees
WHERE role LIKE 'art%'
GROUP BY role;

-- Exercise 2
SELECT role, COUNT(*) AS total_employees
FROM employees
GROUP BY role;

-- Exercise 3
SELECT role, SUM(years_employed) AS total_engineer_years
FROM employees
WHERE role LIKE 'Eng%'
GROUP BY role;

-- Lesson 12: 

-- Exercise 1
SELECT movies.director, COUNT(*) AS total_movies_directed
FROM movies
GROUP BY movies.director
ORDER BY total_movies_directed DESC;

-- Exercise 2
SELECT movies.director, SUM(boxoffice.domestic_sales) + SUM(boxoffice.international_sales) AS total_sales
FROM movies
INNER JOIN boxoffice
    ON boxoffice.movie_id = movies.id
GROUP BY movies.director
ORDER BY total_sales DESC;

-- Lesson 13: short note on inserts

-- Exercise 1
INSERT INTO movies 
VALUES (4, "Toy Story 4", "El Directore", 2015, 90);

-- Exercise 2
INSERT INTO boxoffice 
VALUES (4, 8.7, 340000000, 270000000);

-- Lesson 14: short note on updates

-- Exercise 1
UPDATE movies
SET director = "John Lasseter"
WHERE title = "A Bug's Life";

-- Exercise 2
UPDATE movies
SET year = 1999
WHERE id = 3;

-- Exercise 3
UPDATE movies
SET title = 'Toy Story 3', 
    director = 'Lee Unkrich'
WHERE id = 11;

-- Lesson 15: short note on deletes

-- Exercise 1
DELETE FROM movies
WHERE year < 2005;

-- Exercise 2
DELETE FROM movies
WHERE director = 'Andrew Stanton';

-- Lesson 16: short note on creating tables

-- Exercise 1
CREATE TABLE database (
    name TEXT,
    version FLOAT,
    download_count INTEGER
);

-- Lesson 17: short note on altering tables

-- Exercise 1
ALTER TABLE movies
ADD aspect_ratio FLOAT

-- Exercise 2
ALTER TABLE movies
ADD language TEXT
    DEFAULT 'English';

-- Lesson 18: short note on dropping tables

-- Exercise 1
DROP TABLE movies;

-- Exercise 2
DROP TABLE boxoffice;
























