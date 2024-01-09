create schema cars ;
use cars;
-- READ DATA--
select * from car_dekho;
-- Total cars: To get a count of total records--
select count(*) from car_dekho;
-- How many cars will be available in 2023--
select count(*) from car_dekho
where year = 2023 ;
-- How many cars is available in 2020,2021,2022--
select count(*) from car_dekho
where year in(2020,2021,2022)
group by year;
-- Print the total of all cars by year and don't show details--
select year,count(*) from car_dekho
group by year ;
-- client asked to car dealer agent how many diesel cars will be there in 2020--
select count(*) from car_dekho
where year = 2020 and fuel = "diesel";
-- client asked to car dealer agent how many petrol cars will be there in 2020--
select count(*) from car_dekho
where year = 2020 and fuel = "petrol";
-- Give a print to all the fuel cars(petrol,diesel,CNG)come by all year--
select year,count(*) from car_dekho
where fuel = "petrol"
group by year;
select year,count(*) from car_dekho
where fuel = "diesel"
group by year;
select year,count(*) from car_dekho
where fuel = "CNG"
group by year;
-- which year had more than 100 cars--
select year,count(*) from car_dekho
group by year
having count(*)>100;
-- find all cars count details between 2015 and 2023--
select count(*) from car_dekho
where year between 2015 and 2023;
-- All cars details between 2015 to 2023--
select * from car_dekho
where year between 2015 and 2023;
-- List the count car models available in the dataset--
select count(name) as count, name from car_dekho
group by name
order by count desc ;
-- what are the average selling price of the cars--
select name,avg(selling_price)as avg_price
from car_dekho
group by name;
-- which cars have a mileage greater than 20km/l--
select name,mileage,fuel,transmission from car_dekho
where mileage >20;
-- Display the cars with manual transmission and mileage greater than 15km/l--
select name,mileage,fuel,transmission from car_dekho
where mileage >15 and transmission = "manual"
order by mileage desc;
-- find the top 10 cars with the highest selling price--
select name,selling_price from car_dekho
order by selling_price desc
limit 10;
-- show the average mileagefor each fuel type--
select name,fuel,avg(mileage)as avg_mileage from car_dekho
group by name,fuel
order by avg_mileage desc ;
-- list the cars with less than 5 years of usage--
select * from car_dekho
where year(curdate())- year <5;
-- find the oldest and newest cars in the dataset--
select * from car_dekho
where year = (select min(year) from car_dekho);
						select * from car_dekho
						where year = (select max(year) from car_dekho);








