select
      ORDERID,
      ORDERDATE,
      CUSTOMERID,
      EMPLOYEEID,
      STOREID,
      STATUS AS StatusCD,
      CASE
          WHEN STATUS = '01' THEN 'IN Progress'
          WHEN STATUS = '02' THEN 'IN Completed'
          WHEN STATUS = '03' THEN 'IN Cancelled'
          ELSE NULL
     END AS StatusDesc,
     CASE
         WHEN StoreID = 1000 THEN 'Online'
         ELSE 'In-store'
     END AS ORDER_CHANNEL,
     Updated_at,
     Current_timestamp as dbt_updated_at
from
     {{source('landing','orders')}}