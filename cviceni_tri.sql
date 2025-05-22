select count(*) as pocet_radku,
 MAX(value) as nej
from czechia_price;

select count(*) as celkový_pocet_radku,
count(value) as pocet_cen
from czechia_payroll cp ;

-- z druhe tabulky si najdu co znamena hodnota 316 a pocitam jen radky kde jsou vyplnene hodnoty
select count(*)
from czechia_payroll cp 
where value_type_code = 316
and value is not null;

select count(*) pocet_zaznamu,
category_code code
from czechia_price cp 
group by category_code ;

select SUM(value) as součet_prumernych_zamestnacu
from czechia_payroll cp 
where value_type_code = 316
and value is not null;


select SUM(value) as soucet_cen,
category_code
from czechia_price
where region_code = 'CZ064'
group by category_code ;


select category_code,
MIN(value) as minimalni_cena
from czechia_price cp 
where date_part('year', date_from) between 2015 and 2017
group by category_code ;


select avg(value)
from czechia_price cp
where category_code  = '112704'
and date_part ('year', date_from) = 2015;




