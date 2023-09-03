-- ORDER BY

-- Select name from people and sort alphabetically
SELECT name
FROM people
ORDER BY name;

-- Select the title and duration from longest to shortest film
SELECT title,duration
FROM films
ORDER BY duration DESC;

-- Select the release year, duration, and title sorted by release year and duration
SELECT 
    release_year,
    duration,
    title
FROM films
ORDER BY release_year, duration ASC

-- Select the certification, release year, and title sorted by certification and release year
SELECT 
    certification,
    release_year,
    title
FROM films
ORDER BY certification ASC, release_year DESC;