-- What are the languages presently spoken in the two countries
SELECT c.name AS country, l.name AS language
FROM languages AS l
-- Inner join countries as c with languages as l on code
INNER JOIN countries AS c
USING (code)
WHERE c.code IN ('PAK','IND')
	AND l.code in ('PAK','IND');

--Given the shared history between the two countries, what languages
-- could potentially have been spoken in either country over the course of their history?
SELECT c.name AS country, l.name AS language
FROM countries AS c
-- Perform a cross join to languages (alias as l)
CROSS JOIN languages AS l
WHERE c.code in ('PAK','IND')
	AND l.code in ('PAK','IND');

SELECT
	c.name AS country,
    region,
    life_expectancy AS life_exp
FROM countries AS c
-- Join to populations (alias as p) using an appropriate join
LEFT JOIN populations AS p
ON c.code = p.country_code
-- Filter for only results in the year 2010
WHERE year = 2010
-- Sort by life_exp
ORDER BY life_exp
-- Limit to five records
LIMIT 5;
