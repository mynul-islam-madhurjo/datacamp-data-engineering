-- Ex 3

--Inner join only returns values from the left and right tables
-- where there is a match from both with a column
SELECT
    c1.name AS city,
    code,
    c2.name AS country,
    region,
    city_proper_pop
FROM cities AS c1
-- Perform an inner join with cities as c1 and countries as c2 on country code
INNER JOIN countries AS c2
ON c1.country_code  = c2.code
ORDER BY code DESC;


--Left join returns all the values from the right table
-- if empty no match returns with null
SELECT
	c1.name AS city,
    code,
    c2.name AS country,
    region,
    city_proper_pop
FROM cities AS c1
-- Join right table (with alias)
LEFT JOIN countries as c2
ON c1.country_code = c2.code
ORDER BY code DESC;

SELECT name, region, gdp_percapita
FROM countries AS c
LEFT JOIN economies AS e
-- Match on code fields
USING (code)
-- Filter for the year 2010
WHERE year = 2010;


-- Right join return the values of left tables with null if no match
-- Modify this query to use RIGHT JOIN instead of LEFT JOIN
SELECT countries.name AS country, languages.name AS language, percent
FROM languages
RIGHT JOIN countries
USING(code)
ORDER BY language;

-- Alternative left join result of this
-- Modify this query to use RIGHT JOIN instead of LEFT JOIN
SELECT countries.name AS country, languages.name AS language, percent
FROM countries
LEFT JOIN languages
USING(code)
ORDER BY language;