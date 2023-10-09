#innerjoin is defalut
#joining movies and financials table

SELECT  movies.movie_id, title, industry, release_year, imdb_rating, studio, language_id, budget, revenue, unit, currency
from movies
join financials
on movies.movie_id=financials.movie_id;

SELECT  m.movie_id, title, industry, release_year, imdb_rating, studio, language_id, budget, revenue, unit, currency
from movies m
join financials f
on m.movie_id=f.movie_id;

#left join
SELECT  m.movie_id, title, industry, release_year, imdb_rating, studio, language_id, budget, revenue, unit, currency
from movies m
left join financials f
on m.movie_id=f.movie_id;

#left join
SELECT  movie_id, title, budget-revenue as profit, unit, currency
from movies m
left join financials f
using (movie_id);

#right join
SELECT  f.movie_id, title, (revenue-budget) as profit, unit, currency
from movies m
right join financials f
on m.movie_id=f.movie_id
order by profit desc
limit 10;

#right join
SELECT  f.movie_id, title, (revenue-budget) as profit, unit, currency
from movies m
right join financials f
using (movie_id)
order by profit desc;

#Full join with "union" function
SELECT  m.movie_id, title, budget, revenue, unit, currency, revenue-budget as profit
from movies m
left join financials f
on m.movie_id=f.movie_id
union
SELECT  f.movie_id, title, budget, revenue, unit, currency, revenue-budget as profit
from movies m
right join financials f
on m.movie_id=f.movie_id
order by profit desc
limit 10;









