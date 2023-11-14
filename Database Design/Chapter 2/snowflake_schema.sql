-- Extending the star schema

-- Create dim_author with an author column
CREATE TABLE dim_author (
    author VARCHAR(256) NOT NULL
);

-- Insert distinct authors
INSERT INTO dim_author (author)
SELECT DISTINCT author FROM dim_book_star;

-- Output each state and their total sales_amount
SELECT dim_state_sf.state, SUM(sales_amount)
FROM fact_booksales
    -- Joins for genre
    JOIN dim_book_sf on fact_booksales.book_id = dim_book_sf.book_id
    JOIN dim_genre_sf on dim_book_sf.genre_id = dim_genre_sf.genre_id
    -- Joins for state
    JOIN dim_store_sf on fact_booksales.store_id = dim_store_sf.store_id
    JOIN dim_city_sf on dim_store_sf.city_id = dim_city_sf.city_id
	JOIN dim_state_sf on  dim_city_sf.state_id = dim_state_sf.state_id
-- Get all books with in the novel genre and group the results by state
WHERE
    dim_genre_sf.genre = 'novel'
GROUP BY
    dim_state_sf.state;