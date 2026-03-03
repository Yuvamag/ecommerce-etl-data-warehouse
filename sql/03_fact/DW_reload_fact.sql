INSERT INTO warehouse.Fact_Sales (
    Customer_Key,
    Product_Key,
    Order_Date_Key,
    Ship_Date_Key,
    Quantity,
    Sales,
    Discount,
    Profit
)
SELECT
    c.Customer_Key,
    p.Product_Key,
    d1.Date_Key,
    d2.Date_Key,
    s.Quantity,
    s.Sales,
    s.Discount,
    s.Profit
FROM staging.Sales_Staging s
JOIN warehouse.Customer_Dim c
    ON s.Customer_ID = c.Customer_ID
    AND c.Is_Current = 1
JOIN warehouse.Product_Dim p
    ON s.Product_ID = p.Product_ID
JOIN warehouse.Date_Dim d1
    ON s.Order_Date = d1.Full_Date
JOIN warehouse.Date_Dim d2
    ON s.Ship_Date = d2.Full_Date;