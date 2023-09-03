-- Find the release_year and film_count of each year
SELECT release_year, count(*) AS film_count
FROM films
GROUP BY release_year;

-- Find the release_year and average duration of films for each year
SELECT release_year, avg(duration) AS avg_duration
FROM films
GROUP BY release_year;
 
-- Find the release_year, country, and max_budget, then group and order by release_year and country

SELECT 
    release_year,
    country,
    max(budget) AS max_budget
FROM films
GROUP BY release_year,country
ORDER BY release_year,country; 