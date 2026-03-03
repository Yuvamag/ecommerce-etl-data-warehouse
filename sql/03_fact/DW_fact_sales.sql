CREATE TABLE warehouse.Fact_Sales (

    Sales_Key INT IDENTITY(1,1) PRIMARY KEY,

    -- Foreign Keys
    Customer_Key INT NOT NULL,
    Product_Key INT NOT NULL,
    Order_Date_Key INT NOT NULL,
    Ship_Date_Key INT NOT NULL,

    -- Measures
    Quantity INT NOT NULL,
    Sales DECIMAL(10,2) NOT NULL,
    Discount DECIMAL(10,2) NOT NULL,
    Profit DECIMAL(10,2) NOT NULL,

    -- Foreign Key Constraints
    CONSTRAINT FK_Fact_Customer FOREIGN KEY (Customer_Key)
        REFERENCES warehouse.Customer_Dim(Customer_Key),

    CONSTRAINT FK_Fact_Product FOREIGN KEY (Product_Key)
        REFERENCES warehouse.Product_Dim(Product_Key),

    CONSTRAINT FK_Fact_OrderDate FOREIGN KEY (Order_Date_Key)
        REFERENCES warehouse.Date_Dim(Date_Key),

    CONSTRAINT FK_Fact_ShipDate FOREIGN KEY (Ship_Date_Key)
        REFERENCES warehouse.Date_Dim(Date_Key)
);