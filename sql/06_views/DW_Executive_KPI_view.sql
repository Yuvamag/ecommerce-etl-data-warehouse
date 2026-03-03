CREATE VIEW warehouse.vw_Sales_Overview AS
SELECT
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    SUM(Quantity) AS Total_Quantity,
    SUM(Discount) AS Total_Discount,
    CASE 
        WHEN SUM(Sales) = 0 THEN 0
        ELSE (SUM(Profit) / SUM(Sales)) * 100
    END AS Profit_Margin_Percent
FROM warehouse.Fact_Sales;