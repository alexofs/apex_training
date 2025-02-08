rem System : AOP Training
rem Descrip: Queries
rem Author : Alejandro Flores-Solis
rem Date   : 11/03/2024


-- Q1
select
    'file1' as "filename",
    cursor
    (select 
       cursor(
         select ID, NAME, SHORT_DESC, SUGGESTED_WHLSL_PRICE, WHLSL_UNITS
         from   S_PRODUCT) as "products"
       from dual) as "data"
from dual


-- Q2
select  cursor (
            select c.ID, c.NAME, c.PHONE, c.ADDRESS, c.CITY, c.STATE, c.COUNTRY, c.ZIP_CODE, c.CREDIT_RATING,
            cursor (
                select o.ID, o.DATE_ORDERED, o.DATE_SHIPPED, o.TOTAL, o.PAYMENT_TYPE, o.ORDER_FILLED, o.CUSTOMER_ID
                from   S_ORD o
                where  o.CUSTOMER_ID = c.ID 
            ) as ORDERS
            from S_CUSTOMER c
        ) as "data"
from    dual


-- Q3
alter table S_PRODUCT add (INVENTORY number);

update S_PRODUCT
set    INVENTORY = round(dbms_random.value(1,50));


-- Q4
select
    'file1' as "filename",
    cursor
    (select 
       cursor(
         select ID, NAME, SHORT_DESC, SUGGESTED_WHLSL_PRICE, WHLSL_UNITS, SPORT,
                apex_web_service.blob2clobbase64(IMAGE) IMAGE,
                80 as "IMAGE_width", 80 as "IMAGE_height"
         from   S_PRODUCT) as "products"
       from dual) as "data"
from dual
