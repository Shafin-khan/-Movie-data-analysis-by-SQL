 
-- Select* from moviesdb.movies where imdb_rating>9;

-- select* from moviesdb.movies where title like "%america%"


#1: all the movies between 7 and 9
-- select * from moviesdb.movies where imdb_rating>7 and imdb_rating<9
##option 2
-- select * from moviesdb.movies where imdb_rating between 7 and 9
 
 
 #2: Use of OR 
 -- select*
--  from moviesdb.movies
--  where release_year=2022 or release_year=2020;
 
 
## Option 2
-- select*
-- from moviesdb.movies
-- where release_year in ( 2022,2020,2018) 

### 
-- select*
-- from moviesdb.movies
-- where studio in ("zee studios", "marvel studios")



#3:  finding the null values

-- select* 
-- from moviesdb.movies
-- where imdb_rating is Null 


#4:  Filtering 
-- select* 
-- from moviesdb.movies where industry="bollywood"
-- -- where industry="bollywood": This clause filters the data. It only selects rows where the value in the industry column is equal to "bollywood".
-- order by imdb_rating DESC limit 5


#5: print all the years where more than 2 movies were released

-- select release_year, count(*) as movies_count
-- from moviesdb.movies
-- group by release_year
-- having movies_count>2
-- order by movies_count desc

-- the order of sql command: from--> where-->group by


#6:  find the age of actors

select* , Year( curdate())-birth_year as age from moviesdb.actors  