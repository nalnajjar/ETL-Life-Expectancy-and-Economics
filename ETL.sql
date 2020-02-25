--Table Drops--

drop table life_expectancy;
drop table economic_freedom;

--Create Tables--

create table economic_freedom(
	iso_code VARCHAR(3),
	country_name VARCHAR(40),
	economic_freedom_summary_index DEC(3,2),
	economic_freedom_rank INT);

create table life_expectancy (
	iso_code VARCHAR(3),
	country_name VARCHAR(40),
	life_expectancy DEC(5,2));


select * from economic_freedom;
select * from life_expectancy;

--Deleted Nulls in life_expectancy--
DELETE FROM life_expectancy WHERE life_expectancy IS NULL;

--Confirmed Deletion--
select * from life_expectancy;

--Combine on ISO Code--
create view combined as 
select economic_freedom.iso_code,
		economic_freedom.country_name,
		economic_freedom.economic_freedom_summary_index,
		economic_freedom.economic_freedom_rank,
		life_expectancy.life_expectancy
from economic_freedom
inner join life_expectancy on
economic_freedom.iso_code = life_expectancy.iso_code;

select * from combined order by economic_freedom_rank asc;