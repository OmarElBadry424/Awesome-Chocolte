SELECT * FROM `awesome chocolates`.sales;

select SaleDate, Amount, Customers from `awesome chocolates`.sales;
select Amount, Customers, GeoID from `awesome chocolates`.sales;

Select SaleDate, Amount, Boxes, Amount / boxes as 'Amount per box'  from `awesome chocolates`.sales;

select * from sales
where amount > 10000;

select * from `awesome chocolates`.sales
where amount > 10000
order by amount desc;


select * from `awesome chocolates`.sales
where geoid='g1'
order by PID, Amount desc;


Select * from `awesome chocolates`.sales
where amount > 10000 and SaleDate >= '2022-01-01';


select SaleDate, Amount from `awesome chocolates`.sales
where amount > 10000 and year(SaleDate) = 2022
order by amount desc;

select * from `awesome chocolates`.sales
where boxes >0 and boxes <=50;


select * from `awesome chocolates`.sales
where boxes between 0 and 50;


select SaleDate, Amount, Boxes, weekday(SaleDate) as 'Day of week'
from `awesome chocolates`.sales
where weekday(SaleDate) = 4;


select * from  `awesome chocolates`.people;


select * from  `awesome chocolates`.people
where team = 'Delish' or team = 'Jucies';

select * from  `awesome chocolates`.people
where team in ('Delish','Jucies');


select * from  `awesome chocolates`.people
where salesperson like 'B%';

select * from  `awesome chocolates`.people
where salesperson like '%B%';

select * from  `awesome chocolates`.sales;

select 	SaleDate, Amount,
		case 	when amount < 1000 then 'Under 1k'
				when amount < 5000 then 'Under 5k'
                when amount < 10000 then 'Under 10k'
			else '10k or more'
		end as 'Amount category'
from `awesome chocolates`.sales;


select team, count(*) from `awesome chocolates`.people
group by team
