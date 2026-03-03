CREATE VIEW warehouse.vw_Shipping_Performance AS
SELECT
    DATEDIFF(DAY, od.Full_Date, sd.Full_Date) AS Shipping_Days,
    COUNT(*) AS Total_Orders,
    SUM(f.Sales) AS Total_Sales
FROM warehouse.Fact_Sales f
JOIN warehouse.Date_Dim od
    ON f.Order_Date_Key = od.Date_Key
JOIN warehouse.Date_Dim sd
    ON f.Ship_Date_Key = sd.Date_Key
GROUP BY
    DATEDIFF(DAY, od.Full_Date, sd.Full_Date);