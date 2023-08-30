-- Select unique authors from the books table

Select distinct author from books;

-- Select unique authors and genre combinations from the books table
SELECT distinct author,genre
FROM books;

-- Alias author so that it becomes unique_author
SELECT DISTINCT author as unique_author
FROM books;

-- Your code to create the view:
CREATE VIEW library_authors AS
SELECT DISTINCT author AS unique_author
FROM books;

-- Select all columns from library_authors
SELECT * FROM library_authors;