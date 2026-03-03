CREATE VIEW warehouse.vw_Sales_By_Category AS
SELECT
    p.Category,
    p.Sub_Category,
    SUM(f.Sales) AS Total_Sales,
    SUM(f.Profit) AS Total_Profit,
    SUM(f.Quantity) AS Total_Quantity
FROM warehouse.Fact_Sales f
JOIN warehouse.Product_Dim p
    ON f.Product_Key = p.Product_Key
GROUP BY
    p.Category,
    p.Sub_Category;