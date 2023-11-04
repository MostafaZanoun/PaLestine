--1-- Number of deaths

select count(ID) as total
from Pal

--2-- Number of pal deaths

select count(ID) as pal
from pal 
where citizenship='Palestinian'

--3-- No of Isr deaths

select count(ID) as Isr
from pal
where citizenship != 'Palestinian'

--4-- Most cities deaths

select count(ID) as 'Deaths by cities',place_of_residence_district
from Pal
where place_of_residence_district is not null and citizenship='Palestinian'
group by place_of_residence_district 
order by 'Deaths by cities' desc
 
 --5-- Avg ages of pal deaths
 select avg (age) as Age 
 from Pal 
 where citizenship = 'Palestinian'

 --6-- Most Dates of deaths 
 select COUNT(ID) AS Deaths, date_of_death
 from Pal
 where citizenship='Palestinian'
 group by date_of_death
 order by Deaths desc

--7-- Types of injury of pal
select count(ID) as Deaths , type_of_injury
from Pal
where type_of_injury is not null and citizenship='Palestinian'
group by type_of_injury
order by deaths desc

--8-- Most disrict had events
select count (ID) as deaths , event_location_district 
from Pal
where citizenship='Palestinian'
group by event_location_district



--9-- Number of pal childern death
select count(ID) children 
from pal 
where citizenship='Palestinian' and age <=15

--10--   Pal children death by age and name
select  Age,name
from Pal
where age <=15 and citizenship='Palestinian'
order by age asc
 
 --11-- Number of Not Pal Children death
select count(ID) children 
from pal 
where citizenship!='Palestinian' and age <=15

--12-- Not Pal Children death by age and name
select name , Age
from Pal
where age <=15 and citizenship!='Palestinian'
order by age asc

--13-- number of Pal old people death
select count(ID) as 'Old People Deaths'
from pal 
where age >=65 and citizenship='Palestinian'

--14--  Pal old people death
select name, Age 
from pal 
where age >=65 and citizenship='Palestinian'
order by age desc

--15--  isr old people death
select name, Age 
from pal 
where age >=65 and citizenship!='Palestinian'
order by age desc

--16-- number of Not Pal old people death
select count(ID) as 'Old People Deaths'
from pal 
where age >=65 and citizenship!='Palestinian'

--17-- Number of female pal deaths
select count(ID) as 'Female Deaths'
from pal 
where gender='f' and citizenship='Palestinian'

--18--  femal Pal deaths and their age
select DISTINCT name , Age 
from Pal
where gender='f' and citizenship='Palestinian'
order by age asc


--19-- Number of female isr deaths
select count(ID) as 'Femal Deaths'
from pal
where gender='f' and citizenship!='Palestinian'

--20--  female not Pal deaths and their age
select DISTINCT name , Age 
from Pal
where gender='f' and citizenship!='Palestinian'
order by age asc
