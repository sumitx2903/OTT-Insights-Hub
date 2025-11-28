-- Active: 1764336464215@@127.0.0.1@3306@ott_insight_hub
-- Drop existing tables if they exist
DROP TABLE IF EXISTS movie_genre_bridge;
DROP TABLE IF EXISTS ratings;
DROP TABLE IF EXISTS fact_movies;
DROP TABLE IF EXISTS dim_genre;

-- ✅ Fact Table - Movie metrics
CREATE TABLE fact_movies (
    movie_id INT PRIMARY KEY AUTO_INCREMENT,
    movie_name VARCHAR(255) NOT NULL UNIQUE,
    imdb_rating FLOAT,
    num_votes INT,
    release_year INT,
    runtime INT,
    popularity FLOAT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- ✅ Dimension Table - Genres
CREATE TABLE dim_genre (
    genre_id INT PRIMARY KEY AUTO_INCREMENT,
    genre_name VARCHAR(100) NOT NULL UNIQUE
);

-- ✅ Bridge Table - Movie to Genre mapping
CREATE TABLE movie_genre_bridge (
    movie_id INT NOT NULL,
    genre_id INT NOT NULL,
    PRIMARY KEY (movie_id, genre_id),
    FOREIGN KEY (movie_id) REFERENCES fact_movies(movie_id) ON DELETE CASCADE,
    FOREIGN KEY (genre_id) REFERENCES dim_genre(genre_id) ON DELETE CASCADE
);

-- ✅ Ratings Table
CREATE TABLE ratings (
    rating_id INT PRIMARY KEY AUTO_INCREMENT,
    movie_id INT NOT NULL,
    rating_source VARCHAR(50),
    rating_value FLOAT NOT NULL,
    rating_count INT,
    FOREIGN KEY (movie_id) REFERENCES fact_movies(movie_id) ON DELETE CASCADE
);

-- ✅ Create Indexes for performance
CREATE INDEX idx_release_year ON fact_movies(release_year);
CREATE INDEX idx_popularity ON fact_movies(popularity);
CREATE INDEX idx_rating_value ON ratings(rating_value);
CREATE INDEX idx_genre_name ON dim_genre(genre_name);