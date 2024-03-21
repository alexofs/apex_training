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
