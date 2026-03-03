CREATE VIEW warehouse.vw_Monthly_Sales_Trend AS
SELECT
    d.Year,
    d.Month,
    d.Month_Name,
    SUM(f.Sales) AS Monthly_Sales,
    SUM(f.Profit) AS Monthly_Profit,
    SUM(f.Quantity) AS Monthly_Quantity
FROM warehouse.Fact_Sales f
JOIN warehouse.Date_Dim d
    ON f.Order_Date_Key = d.Date_Key
GROUP BY
    d.Year,
    d.Month,
    d.Month_Name;