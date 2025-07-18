# Movie-Data

 IMDb Movie Data Analysis (2023) - SQL Project
This project presents SQL-based analysis of IMDb movie data released in 2023. The dataset includes essential attributes like ratings, genres, cast, and votes for each film. The objective is to explore the data using SQL queries for insights and visualizations.

📁 Dataset Overview
The dataset imdb_movie_data_2023.csv contains movie metadata including:

Column Name	Description
MovieId	Unique ID for each movie
Moive_Name	Title of the movie (Typo to be corrected in DB)
Rating	IMDb rating
Votes	Number of IMDb user votes
Meta_Score	Metacritic rating
Genre	Genres (comma-separated)
PG_Rating	Certification (e.g. R, PG-13)
Year	Year of release (2023)
Duration	Runtime (e.g., "2h 18m")
Cast	Lead cast members
Director	Film director

🧪 Sample SQL Queries

1. Top 5 Highest Rated Movies
SELECT Moive_Name, Rating
FROM imdb_movies
ORDER BY Rating DESC
LIMIT 5;

- 2. Count of Movies by Genre
SELECT Genre, COUNT(*) AS Total
FROM imdb_movies
GROUP BY Genre
ORDER BY Total DESC;

- 3. Average Rating by PG Rating
SELECT PG_Rating, AVG(Rating) AS Avg_Rating
FROM imdb_movies
GROUP BY PG_Rating;

- 4. Movies with Meta_Score > 80
SELECT Moive_Name, Meta_Score
FROM imdb_movies
WHERE Meta_Score > 80;
🗂️ Features
Raw SQL queries for insights

Genre-wise and rating-based breakdowns

Filtering by director, cast, or certification

Use with MySQL, PostgreSQL, SQLite (after importing CSV)



git clone https://github.com/sakshicodes2024/sql-imdb-movies-2023.git
Import the CSV into your SQL tool

For MySQL:
LOAD DATA INFILE 'path_to_csv/imdb_movie_data_2023.csv'
INTO TABLE imdb_movies
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
IGNORE 1 ROWS;
Run SQL queries for analysis

📌 Notes
Correct column typo: Moive_Name ➝ Movie_Name

Normalize genres if needed (split multiple genres)

Clean encoding issues in names if importing fails

🙋‍♀️ Author
Sakshi Sable
📧 sakshisable703@gmail.com
🔗 GitHub: sakshicodes2024


www.linkedin.com/in/sakshi-sable-76002b342
