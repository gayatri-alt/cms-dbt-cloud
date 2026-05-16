{{config(materialized='table')}}

select
       FIRSTNAME ,
       LASTNAME,
       CUSTOMERID,
       EMAIL,
       PHONE,
       ADDRESS,
       CITY,   
       STATE,
       ZIPCODE,    
       UPDATED_AT,
       CONCAT(FIRSTNAME,'',LASTNAME) AS CustomerName
FROM
       {{source('landing','customers')}}

