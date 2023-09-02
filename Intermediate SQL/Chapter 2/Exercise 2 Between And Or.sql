--AND
-- Select the title and release_year for all German-language films released before 2000
SELECT 
    title,
    release_year
FROM films
WHERE language = 'German'
    AND release_year < 2000;

-- Update the query to see all German-language films released after 2000
SELECT 
    title,
    release_year
FROM films
WHERE language = 'German'
    AND release_year > 2000;

-- Select all records for German-language films released after 2000 and before 2010
SELECT * 
FROM films
WHERE language = 'German' 
    AND release_year < 2010 AND release_year > 2000;  

--OR
-- Find the title and year of films from the 1990 or 1999
SELECT 
    title,
    release_year
FROM films
WHERE release_year = 1990
    OR release_year = 1999;

SELECT title, release_year
FROM films
WHERE (release_year = 1990 OR release_year = 1999)
-- Add a filter to see only English or Spanish-language films
AND (language = 'English' OR language = 'Spanish');

SELECT title, release_year
FROM films
WHERE (release_year = 1990 OR release_year = 1999)
	AND (language = 'English' OR language = 'Spanish')
-- Filter films with more than $2,000,000 gross
	AND gross > 2000000;

--BETWEEN
-- Select the title and release_year for films released between 1990 and 2000
SELECT
    title,
    release_year
FROM films
WHERE release_year BETWEEN 1990 AND 2000; 

SELECT title, release_year
FROM films
WHERE release_year BETWEEN 1990 AND 2000
-- Narrow down your query to films with budgets > $100 million
	AND budget > 100000000;


SELECT title, release_year
FROM films
WHERE release_year BETWEEN 1990 AND 2000
	AND budget > 100000000
-- Restrict the query to only Spanish-language films
	AND language = 'Spanish';

SELECT title, release_year
FROM films
WHERE release_year BETWEEN 1990 AND 2000
	AND budget > 100000000
-- Amend the query to include Spanish or French-language films
	AND (language = 'Spanish' OR language = 'French');

-- Count the unique titles
SELECT COUNT(DISTINCT title) AS nineties_english_films_for_teens
FROM films
-- Filter to release_years to between 1990 and 1999
WHERE release_year BETWEEN 1990 AND 1999
-- Filter to English-language films
AND language = 'English'
-- Narrow it down to G, PG, and PG-13 certifications
AND certification IN ('G','PG','PG-13');