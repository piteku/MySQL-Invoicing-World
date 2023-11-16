SELECT * FROM world.city;
# work on the optional tasks
# Find the capital of Spain
select country.name as Country, city.name as Capital, city.CountryCode
from city 
inner join country on city.id=country.Capital
where country.Code='ESP';
# Sql statement for list of Languages spoken in Caribbean region
select countrylanguage.Language, country.Name as Country, country.Region from countrylanguage
inner join country on countrylanguage.CountryCode = country.Code
where country.Region= 'caribbean'
order by country;
# Sql statement to find all cities from the European continent
select city.name as City, Country.name as Country, country.Continent from City
inner join country on city.CountryCode=country.Code
where country.Continent = 'Europe'
order by city;