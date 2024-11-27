rem System : Demo: Sport Goods Orders
rem Descrip: Queries
rem Author : Alejandro Flores-Solis
rem Date   : 20/03/2024


-- REGION_LOV
select NAME, ID
from   S_REGION;

-- SALES_REP_LOV
select FIRST_NAME||' '||LAST_NAME FULL_NAME, ID
from   S_EMP;

-- DEPT_LOV
select NAME, ID
from   S_DEPT;

-- Pie chart:
select  r.NAME, count(*)
from    S_REGION r, S_CUSTOMER c
where   r.ID = c.REGION_ID
group   by r.NAME;

-- Bar chart:
select  c.NAME, count(*)
from    S_CUSTOMER c, S_ORD o
where   c.ID = o.CUSTOMER_ID
group   by c.NAME
order   by 2 desc;

-- Adding BLOB column
alter table S_PRODUCT add (IMAGE BLOB);
