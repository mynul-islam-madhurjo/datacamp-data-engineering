-- Query the sum of film durations
SELECT SUM(duration) as total_duration
FROM films;

-- Calculate the average duration of all films
SELECT AVG(duration) as average_duration
FROM films;

-- Find the latest release_year
SELECT max(release_year) AS latest_year
FROM films;

-- Find the duration of the shortest film
SELECT min(duration) AS shortest_film
FROM films;