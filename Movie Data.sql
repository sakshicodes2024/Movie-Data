create database moviedata;
use moviedata;

select*from movie;
select*from movies where genre ='action';
select *from movies where year=2023;
select genre,avg (rating) as avgrating from movies group by genre;
select* from movies order by rating desc limit 10;
select*from movies order by rating asc limit 10;

-- check for duplicate entries
select movie_name,year,director,count(*)
from movie
group by movie_name,year,director
having count(*)>1;

-- top 5 movies with the highest rating
select movie_name,rating,votes
from movie
order by rating desc
limit 5;

-- movies that were realasese in the year 2023
select movie_name,rating,votes
from movie
where year=2023
order by rating desc;

-- popular movies that are highly rated and have a significant number of votes
select movie_name,rating,votes
from movie
where rating > 7 and votes > 100000
order by rating desc;

-- avg meta score for movies realese in 2023
select avg(meta_score)as average_meta_score
from movie
where year=2023;

-- pg_rating
select pg_rating,count(*) as moive_count
from movie
group by pg_rating;

-- movies by a specific director
select movie_name,rating,year
from movie
where director='christopher nolan';

-- movies sorted
select movie_name,duration,rating
from movie
order by duration desc;

-- 
select genre,count(*)as movie_count
from movie
group by genre
order by movie_count desc;

-- all movies of leonardo dicaprio
select movie_name,cast, year
from movie
where cast like'%leonardo dicaprio%';

-- 
-- 










