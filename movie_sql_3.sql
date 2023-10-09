SELECT *, (revenue-budget) as Profit
FROM financials;

SELECT movie_id, budget, revenue, (revenue-budget) as Profit
FROM financials
group by movie_id
Having Profit>500
Order by Profit desc;

SELECT count(*), (revenue-budget) as Profit
from financials
group by Profit
having Profit>500
Order by Profit;

select *,
if (currency="USD", revenue*83.09, revenue) as revenue_INR 
from financials;

select distinct unit from financials;

select distinct currency from financials;

Select *,
	CASE
		WHEN unit="Billions" THEN revenue*1000
		WHEN unit="Thousands" THEN revenue/1000
		ELSE revenue
	END as revenue_millions
from financials;

#Total Budget and Revenue in Each Currency:
select sum(budget) as total_budget, sum(revenue) as total_revenue, currency
from financials
group by currency;

#Average Budget and Revenue by Unit:
select avg(budget) as total_budget, avg(revenue) as total_revenue, currency
from financials
group by currency;

#Movies with the Highest Profit:
select *, (revenue-budget) as Profit
from financials
order by Profit desc
limit 5;

#Number of Movies in Each Currency:
select count(*), currency
from financials
group by currency;

#Movies with the Highest Budget in USD:
select movie_id, budget,unit,currency
from financials
order by budget desc
limit 10;

#Movies with Negative Profit:
select movie_id, budget, revenue
from financials
where budget>revenue;





