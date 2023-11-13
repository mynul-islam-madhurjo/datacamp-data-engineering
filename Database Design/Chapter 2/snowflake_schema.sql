-- Extending the star schema

-- Create dim_author with an author column
CREATE TABLE dim_author (
    author VARCHAR(256) NOT NULL
);

-- Insert distinct authors
INSERT INTO dim_author (author)
SELECT DISTINCT author FROM dim_book_star;

