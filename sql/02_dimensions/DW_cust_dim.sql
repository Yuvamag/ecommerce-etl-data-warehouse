CREATE TABLE warehouse.Customer_Dim (
    
    -- Surrogate Key
    Customer_Key INT IDENTITY(1,1) PRIMARY KEY,
    
    -- Business Key
    Customer_ID NVARCHAR(50) NOT NULL,
    
    -- Customer Attributes
    Customer_Name NVARCHAR(100),
    Segment NVARCHAR(50),
    Country NVARCHAR(50),
    City NVARCHAR(50),
    State NVARCHAR(50),
    Postal_Code NVARCHAR(20),
    Region NVARCHAR(50),

    -- SCD Type 2 Columns
    Start_Date DATE NOT NULL,
    End_Date DATE NULL,
    Is_Current BIT NOT NULL
);
