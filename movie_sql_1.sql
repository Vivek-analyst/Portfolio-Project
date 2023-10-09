SELECT * FROM movies;
select distinct industry from movies;
select *from movies where release_year=2018;
select *from movies where release_year=2010 or release_year=2019 or release_year=2000;
select *from movies where release_year in (2018,2019,2020);
select title from movies where imdb_rating>=9;
select * from movies where imdb_rating>=6 and imdb_rating<=9;
select * from movies where imdb_rating between 6 and 9;
select * from movies where title like '%thor%';
select * from movies where studio ='';
select * from movies where imdb_rating is null;

select * from movies where industry='Hollywood'
order by imdb_rating asc limit 3;

select * from movies where industry='Hollywood'
order by imdb_rating desc limit 6 offset 2;

select avg(imdb_rating) from movies where studio = 'Warner Bros. Pictures';
select max(imdb_rating) from movies where studio = 'Universal Pictures';
select min(imdb_rating) from movies where industry = 'Hollywood';

select round(avg(imdb_rating),2) as average_rating,
	min(imdb_rating) as minimum_rating,
	max(imdb_rating) as maximum_rating
from movies where industry = "Hollywood";

select count(*) from movies where industry = "Hollywood";
select count(*) from movies where studio = "Universal Pictures";

select 
industry, count(*)
from  movies 
group by industry;

select 
studio, count(*) as cnt
from  movies 
group by studio
order by cnt desc;

select 
industry,
count(*) as cnt,
round(avg(imdb_rating),2) as avg_rating
from  movies 
group by industry
order by cnt desc;

select 
studio,
count(*) as cnt,
round(avg(imdb_rating),2) as avg_rating
from  movies 
where studio!=''
group by studio
order by cnt desc;

select release_year, count(*) as movies_count
from movies
group by release_year
having movies_count >2
order by movies_count desc




