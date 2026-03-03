CREATE VIEW warehouse.vw_Sales_By_Region AS
SELECT
    c.Region,
    c.Country,
    c.State,
    SUM(f.Sales) AS Total_Sales,
    SUM(f.Profit) AS Total_Profit,
    SUM(f.Quantity) AS Total_Quantity
FROM warehouse.Fact_Sales f
JOIN warehouse.Customer_Dim c
    ON f.Customer_Key = c.Customer_Key
WHERE c.Is_Current = 1
GROUP BY
    c.Region,
    c.Country,
    c.State;