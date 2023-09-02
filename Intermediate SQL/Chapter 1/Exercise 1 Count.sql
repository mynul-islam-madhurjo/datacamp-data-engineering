-- Count the number of records in the people table

select Count(*) as count_records from people;

-- Count the number of birthdates in the people table

select Count(birthdate) as count_birthdate from people;

-- Count the records for languages and countries represented in the films table

    SELECT
      COUNT(language) AS count_languages,
      COUNT(country) AS count_countries
    FROM films;

-- Return the unique countries from the films table
select distinct country from films;

-- Count the distinct countries from the films table

select count(distinct country) as count_distinct_countries from films;

-- Debug this code
SELECT certfication
FROM films
         LIMIT 5;

SELECT certification
FROM films
         LIMIT 5;

-- Debug this code
SELECT film_id imdb_score num_votes
FROM reviews;

SELECT film_id, imdb_score, num_votes
FROM reviews;

-- Debug this code
SELECT COUNNT(birthdate) AS count_birthdays
FROM peeple;

-- Debug this code
SELECT COUNT(birthdate) AS count_birthdays
FROM people;


