#print all the years where more than 2 movies were released

-- select release_year, count(*) as movies_count
-- from moviesdb.movies
-- group by release_year
-- having movies_count>2
-- order by movies_count desc

-- the order of sql command: from--> where-->group by



-- part-2
-- find the age of actors

select* , Year( curdate())-birth_year as age from moviesdb.actors  