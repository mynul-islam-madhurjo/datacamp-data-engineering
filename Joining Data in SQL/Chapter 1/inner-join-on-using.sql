--Ex 1
SELECT *
FROM cities
-- Inner join to countries
INNER JOIN countries
-- Match on country codes
ON cities.country_code=countries.code; -- For same matching column name we can use using

--Ex 2
-- Select name fields (with alias) and region
-- Select name fields (with alias) and region
SELECT cities.name AS city,countries.name AS country,countries.region
FROM cities
INNER JOIN countries
ON cities.country_code = countries.code;

--Ex 3
-- Select fields with aliases
SELECT c.code AS country_code, c.name, e.year, e.inflation_rate
FROM countries AS c
-- Join to economies (alias e)
INNER JOIN economies AS e
-- Match on code field using table aliases
ON c.code = e.code -- using (code)

--Ex 4
SELECT c.name AS country, l.name AS language, official
FROM countries AS c
INNER JOIN languages AS l
-- Match using the code column
USING (code)