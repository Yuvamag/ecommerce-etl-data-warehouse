SELECT 
    SUM(CASE WHEN d.Date_Key IS NULL THEN 1 ELSE 0 END) AS Missing_Date,
    SUM(CASE WHEN c.Customer_Key IS NULL THEN 1 ELSE 0 END) AS Missing_Customer,
    SUM(CASE WHEN p.Product_Key IS NULL THEN 1 ELSE 0 END) AS Missing_Product
FROM warehouse.Fact_Sales f
LEFT JOIN warehouse.Date_Dim d
    ON f.Order_Date_Key = d.Date_Key
LEFT JOIN warehouse.Customer_Dim c
    ON f.Customer_Key = c.Customer_Key
LEFT JOIN warehouse.Product_Dim p
    ON f.Product_Key = p.Product_Key;