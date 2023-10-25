-- Select average life_expectancy from the populations table
SELECT avg(life_expectancy)
FROM populations
-- Filter for the year 2015
WHERE year = 2015;

SELECT *
FROM populations
-- Filter for only those populations where life expectancy is 1.15 times higher than average
WHERE life_expectancy > 1.15 *
  (SELECT AVG(life_expectancy)
   FROM populations
   WHERE year = 2015)
    AND year = 2015;

-- Select relevant fields from cities table
SELECT name,country_code,urbanarea_pop
FROM cities
WHERE name IN
-- Filter using a subquery on the countries table
(SELECT DISTINCT capital FROM countries)
ORDER BY urbanarea_pop DESC;

-- Find top nine countries with the most cities
SELECT countries.name AS country, count(cities.name) AS cities_num
FROM countries
LEFT JOIN cities
ON countries.code = cities.country_code
GROUP BY country
-- Order by count of cities as cities_num
ORDER BY cities_num desc,country
LIMIT 9;

-- Alternative of left join
SELECT countries.name AS country,
-- Subquery that provides the count of cities
(SELECT COUNT(*) FROM cities
   WHERE cities.country_code = countries.code) AS cities_num
FROM countries
ORDER BY cities_num DESC, country
LIMIT 9;