use world;
select * from city
where CountryCode = 'USA';
# Task 1
select count(distinct name) as Number_of_Cities from city
where CountryCode = 'USA';
# Task 2
select name, Population, LifeExpectancy from country
where Code = 'ARG';
# Task 3
select Name, Continent, LifeExpectancy, Population from country
order by LifeExpectancy desc
limit 1;
# Task 4
select * from city
where Name like'F%'
limit 25;
# Task 5
select Id, Name , Population from city
limit 10;
# Task 6
Select * from city
where Population > 200000
order by Population desc;
# Task 7
Select name from city
where Name like 'Be%';
# Task 8
select Name, Population from city
where Population between 500000 and 1000000
order by Population asc;
# Task 9
select Name, population from city
order by Population asc
limit 1;
Select * from city;
# work on the optional tasks
select country.name as Country, city.name as Capital, city.CountryCode
from city 
inner join country on city.id=country.Capital
where country.Code='ESP';
# Sql statement for list of Languages spoken in Caribbean region
select countrylanguage.Language, country.Name as Country, country.Region from countrylanguage
inner join country on countrylanguage.CountryCode = country.Code
where country.Region= 'caribbean';
# Sql statement to find all cities from the European continent
select city.name as City, Country.name as Country, country.Continent from City
inner join country on city.CountryCode=country.Code
where country.Continent = 'Europe';