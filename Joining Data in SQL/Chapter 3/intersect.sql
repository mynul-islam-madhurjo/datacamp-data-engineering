-- Ex 6
-- Return all cities with the same name as a country
SELECT name FROM countries
INTERSECT
SELECT name FROM cities