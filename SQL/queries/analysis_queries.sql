-- Active: 1764336464215@@127.0.0.1@3306@ott_insight_hub
-- 📊 Query 1: Top 10 Highest Rated Movies with Genres
SELECT 
    f.movie_name,
    GROUP_CONCAT(d.genre_name SEPARATOR ', ') AS genres,
    f.imdb_rating,
    f.num_votes,
    f.release_year
FROM fact_movies f
JOIN movie_genre_bridge b ON f.movie_id = b.movie_id
JOIN dim_genre d ON b.genre_id = d.genre_id
GROUP BY f.movie_id
ORDER BY f.imdb_rating DESC
LIMIT 10;

-- 📊 Query 2: Movies by Genre with Count
SELECT 
    d.genre_name,
    COUNT(f.movie_id) AS movie_count,
    ROUND(AVG(f.imdb_rating) ,2) AS avg_rating
FROM dim_genre d
LEFT JOIN movie_genre_bridge b ON d.genre_id = b.genre_id
LEFT JOIN fact_movies f ON b.movie_id = f.movie_id
GROUP BY d.genre_id
ORDER BY movie_count DESC;

-- 📊 Query 3: Average Rating by Release Year
SELECT 
    f.release_year,
    ROUND(AVG(f.imdb_rating) ,2) AS avg_rating,
    COUNT(f.movie_id) AS movie_count
FROM fact_movies f
GROUP BY f.release_year
ORDER BY f.release_year DESC;

-- 📊 Query 4: Most Popular Movies
SELECT 
    movie_name,
    imdb_rating,
    num_votes,
    popularity,
    release_year
FROM fact_movies
ORDER BY popularity DESC
LIMIT 10;

-- 📊 Query 5: Movies with Multiple Genres
SELECT 
    f.movie_name,
    COUNT(b.genre_id) AS genre_count,
    f.imdb_rating,
    f.release_year
FROM fact_movies f
JOIN movie_genre_bridge b ON f.movie_id = b.movie_id
GROUP BY f.movie_id
HAVING genre_count > 1
ORDER BY genre_count DESC;