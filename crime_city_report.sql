# create database

create database project1;
use project1;

create table crime(
	id int primary key,
	date date,
    time time,
    crime_type varchar(50),	
    city	varchar(100),
    state	varchar(100),
    location_description text,	
    victim_age	INT,
    victim_gender VARCHAR(30),
    victim_race VARCHAR(30)
    );
    
    SHOW VARIABLES LIKE 'secure_file_priv';

    
    LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/crime_safety_dataset.csv'
INTO TABLE crime
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

select * from crime;

# TOTAL RECORDS
select count(*) from crime;

# list of all crime types
select distinct crime_type from crime;

# crime by city 
select city, count(*) as total_Crime 
from crime group by city order by total_crime desc;

# crime per year
select year(date) as year, count(*) as Total 
from crime group by year order by year;

# crime per month
select month(date) as month , count(*)  as Total 
from crime group by month order by month;

# Victum gender distrubution 
select victim_gender, count(*) as TotalNumber  from crime group by victim_gender;

# Victum age group
select
	case
		when victim_age < 18 then '0-17'
        when victim_age between 18 and 35 then '18 - 35'
        when victim_age between 36 and 60 then '36 - 60'
	else '60+'
end as age_group,
count(*) as Victim_number
from crime group by age_group;

# Most commont gender by crimes

select victim_gender, crime_type, count(*) as Total
from crime
group by victim_gender, crime_type
order by victim_gender, total desc;

# top 5 most dangerious city

select city, count(*) as Total_crimes
from crime 
group by city
order by Total_crimes desc
limit 5;


# crime by time (Peak Hours)
select 
	hour(time) as Hours,
    count(*) as Total
    from crime
    group by hours
    order by total desc;
    
# Most common crime type per city

select city, crime_type, count(*) as total
from crime
group by city , crime_type
order by city, total desc;

# Victim Race distribution
select victim_race , count(*) as Total
from crime
group by victim_race
order by total desc ;