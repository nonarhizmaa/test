-- 1. Find movie title that start with the word ‘The’
SELECT movie_title
FROM movies
WHERE movie_title LIKE 'The%';

-- 2. Find movies’ title that directed by James Cameron (recommended output: director name, movie title)


-- 3. List all first name of actor and director (only one column, no redundancy, and sorted alphabetically)
SELECT first_name
FROM (
    SELECT act_fname AS first_name FROM actor
    UNION
    SELECT dir_fname AS first_name FROM director
) AS combined_names
ORDER BY first_name;

-- 4. Find how many Mystery, Drama, and Adventure movies in the movie table  (recommended output: genre title, number of movies)



-- 5. 
SELECT
    CASE
        WHEN mov_time < 100 THEN 'short movie'
        WHEN mov_time > 130 THEN 'long movie'
        ELSE 'normal movie'
    END AS label_duration,
    COUNT(*) AS number_of_movies
FROM movie
GROUP BY
    CASE
        WHEN mov_time < 100 THEN 'short movie'
        WHEN mov_time > 130 THEN 'long movie'
        ELSE 'normal movie'
    END;