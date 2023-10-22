SELECT * 
FROM cities
-- Inner join to countries
INNER JOIN countries
-- Match on country codes
ON cities.country_code=countries.code; -- For same matching column name we can use using

-- Select name fields (with alias) and region
-- Select name fields (with alias) and region
SELECT cities.name AS city,countries.name AS country,countries.region
FROM cities
INNER JOIN countries
ON cities.country_code = countries.code;