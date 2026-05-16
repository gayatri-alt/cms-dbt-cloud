select
      O.ORDERID,
      O.ORDERDATE,
      O.CUSTOMERID,
      O.EMPLOYEEID,
      O.STOREID,
      O.STATUSCD,
      O.STATUSDESC,
      COUNT(DISTINCT O.ORDERID) AS ORDERCOUNT,
      SUM(OI.TOTALPRICE) AS REVENUE,
      
FROM
      {{ ref('orders_stg')}} O
JOIN
      {{ ref('orderitems_stg')}} OI ON O.ORDERID = OI.ORDERID
GROUP BY 1,2,3,4,5,6,7 