SELECT 
    (SELECT COUNT(*) FROM staging.Sales_Staging) AS Staging_Count,
    (SELECT COUNT(*) FROM warehouse.Fact_Sales) AS Fact_Count;