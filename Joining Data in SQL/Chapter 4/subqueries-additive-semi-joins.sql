--EX 3

-- Select country code for countries in the Middle East
SELECT code FROM countries
WHERE region = 'Middle East'

-- Select unique language names
SELECT DISTINCT name
FROM languages
-- Order by the name of the language
ORDER BY name;

SELECT DISTINCT name
FROM languages
-- Add syntax to use bracketed subquery below as a filter
WHERE code IN
    (SELECT code
    FROM countries
    WHERE region = 'Middle East')
ORDER BY name;

-- Select code and name of countries from Oceania
SELECT code,name
FROM countries
WHERE continent = 'Oceania'

SELECT code, name
FROM countries
WHERE continent = 'Oceania'
-- Filter for countries not included in the bracketed subquery
AND code NOT IN
    (SELECT code
    FROM currencies);

