select
      ORDERID,
      ORDERITEMID,
      PRODUCTID,
      QUANTITY,
      UNITPRICE,
      QUANTITY*UNITPRICE AS TotalPrice,
      Updated_at
FROM
    {{source('landing','orderitems')}}