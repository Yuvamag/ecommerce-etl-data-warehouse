INSERT INTO warehouse.Product_Dim (
    Product_ID,
    Product_Name,
    Category,
    Sub_Category
)
SELECT
    Product_ID,
    MAX(Product_Name),
    MAX(Category),
    MAX(Sub_Category)
FROM staging.Sales_Staging
GROUP BY Product_ID;
