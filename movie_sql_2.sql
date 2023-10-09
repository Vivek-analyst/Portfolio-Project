select actor_id, name, birth_year as Date_of_Birth, (YEAR(CURDATE())-birth_year) as Age
from actors;

SELECT COUNT(*) as Count_ofActors, (YEAR(CURDATE()) - birth_year) as Age
FROM actors
GROUP BY Age
HAVING Age > 50
order by Age desc limit 5;

