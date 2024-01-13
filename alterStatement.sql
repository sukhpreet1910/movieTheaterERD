-- 1. Adding imdb_rating to movies 

ALTER TABLE movies
ADD COLUMN imdb_rating varchar(255) NOT NULL;

UPDATE movies SET imdb_rating = 8.8 WHERE movie_id = 1; 
UPDATE movies SET imdb_rating = 9.3 WHERE movie_id = 2; 
UPDATE movies SET imdb_rating = 9.0 WHERE movie_id = 3;  
UPDATE movies SET imdb_rating = 8.9 WHERE movie_id = 4;  
UPDATE movies SET imdb_rating = 8.8 WHERE movie_id = 5; 

SELECT * 
from movies

-- Adding Discounts column to concessions table 
alter table concessions
add column discounts VARCHAR(100);

UPDATE concessions
SET discounts = '10%'  -- Setting a 10% discount for all products
WHERE concession_id BETWEEN 1 AND 5;

SELECT * 
from concessions


-- Deleting Purchase time column from concessions 

ALTER TABLE concessions 
DROP COLUMN purchase_time

SELECT * 
from concessions