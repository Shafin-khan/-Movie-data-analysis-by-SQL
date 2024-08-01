-- Summary Analytics
-- min, max, avg, group by
-- select round(avg(imdb_rating), 2) from moviesdb.movies where studio="Marvel studios"
#1
select 
  industry, count(*) as cnt,
  avg(imdb_rating)   as avg_rating,
  max(imdb_rating)  as max_rating,
  min(imdb_rating) as min_rating
   from moviesdb.movies
group by industry

order by cnt desc

