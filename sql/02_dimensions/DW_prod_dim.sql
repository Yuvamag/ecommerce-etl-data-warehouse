CREATE TABLE warehouse.Product_Dim (
    
    -- Surrogate Key
    Product_Key INT IDENTITY(1,1) PRIMARY KEY,
    
    -- Business Key
    Product_ID NVARCHAR(50) NOT NULL,
    
    -- Product Attributes
    Product_Name NVARCHAR(200),
    Category NVARCHAR(50),
    Sub_Category NVARCHAR(50)
);
