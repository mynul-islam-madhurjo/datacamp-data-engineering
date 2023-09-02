-- LIKE NOT LIKE
-- Select the names that start with B

SELECT name
FROM people
WHERE name LIKE 'B%';

SELECT name
FROM people
-- Select the names that have r as the second letter
WHERE name LIKE '_r%'

SELECT name
FROM people
-- Select names that don't start with A
WHERE name NOT LIKE 'A%';

--WHERE IN
-- Find the title and release_year for all films over two hours in length released in 1990 and 2000
SELECT
    title,
    release_year
FROM films
WHERE (release_year = 1990 OR release_year = 2000)
AND duration > 120;

-- Find the title and language of all films in English, Spanish, and French
SELECT
    title,
    language
FROM films
WHERE language IN ('English','Spanish','French');

-- Find the title, certification, and language all films certified NC-17 or R that are in English, Italian, or Greek
SELECT
    title,
    certification,
    language
FROM films
WHERE certification IN ('NC-17','R')
AND language IN ('English','Italian','Greek');

-- Count the unique titles
SELECT ___ AS nineties_english_films_for_teens
FROM films
-- Filter to release_years to between 1990 and 1999
WHERE ___
-- Filter to English-language films
	___
-- Narrow it down to G, PG, and PG-13 certifications
	___;

