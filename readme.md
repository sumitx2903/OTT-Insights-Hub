# OTT Ratings & Genre Insights Dashboard

## 🧩 Problem Statement
The project aims to assist a media analytics agency in analyzing trends in OTT platform content by scraping data from IMDB or TMDb to gather insights on top-rated shows and movies and user preferences.

## ⚙️ Tech Stack
- **Data Scraping**: 
  - **Python**: Used for writing scripts to scrape data from IMDB or TMDb.
  - **Libraries**: 
    - `requests`: For making HTTP requests to APIs.
    - `BeautifulSoup`: For parsing HTML and extracting data.
    - `pandas`: For data manipulation and cleaning.

- **Database**: 
  - **SQL Server**: Used to store and manage the scraped data.
  - **MySQL Connector**: If using MySQL, this library facilitates database connections.

- **Data Visualization**: 
  - **Power BI**: The primary tool for creating interactive dashboards and visualizations.

## 📋 Requirements

### Software Requirements
1. **Power BI Desktop**: 
   - Required for building the dashboard and visualizing data.
   - Must be installed on a Windows machine.

2. **SQL Server**: 
   - A relational database management system to store the scraped data.
   - Ensure that the SQL Server instance is accessible.

3. **Python**: 
   - A programming language used for data scraping and preprocessing.
   - Must have Python installed along with the necessary libraries.

### Libraries
- **Python Libraries**:
  - `pandas`: For data manipulation and analysis.
  - `requests`: For making API calls to IMDB or TMDb.
  - `BeautifulSoup`: For parsing HTML content.
  - `mysql-connector`: For connecting to MySQL databases (if applicable).

### Data Requirements
- **Access to IMDB or TMDb API**: 
  - An API key may be required for accessing data from these platforms.
  
- **Database Schema**:
  - **Tables**:
    - `movies`: Contains movie details (e.g., title, rating, release year).
    - `genres`: Contains genre details (e.g., genre name).
    - `movie_genres`: A bridge table linking movies and genres (e.g., movie_id, genre_id).

### Data Structure
- **Movies Table**: 
  - Columns: `movie_id`, `title`, `rating`, `release_year`, `votes`, etc.
  
- **Genres Table**: 
  - Columns: `genre_id`, `genre_name`.
  
- **Movie_Genres Table**: 
  - Columns: `movie_id`, `genre_id`.

## 📈 Insights and Analysis
The dashboard will provide insights into:
- Average ratings of movies by genre.
- Total number of movies available.
- Popularity index based on ratings and votes.
- Trends in movie ratings over time.
- Genre distribution of movies.

This comprehensive setup allows for effective analysis of OTT content trends, enabling data-driven decision-making for media analytics agencies.