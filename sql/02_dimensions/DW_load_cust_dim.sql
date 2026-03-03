INSERT INTO warehouse.Customer_Dim (
    Customer_ID,
    Customer_Name,
    Segment,
    Country,
    City,
    State,
    Postal_Code,
    Region,
    Start_Date,
    End_Date,
    Is_Current
)
SELECT
    Customer_ID,
    MAX(Customer_Name),
    MAX(Segment),
    MAX(Country),
    MAX(City),
    MAX(State),
    MAX(Postal_Code),
    MAX(Region),
    CAST(GETDATE() AS DATE),
    NULL,
    1
FROM staging.Sales_Staging
GROUP BY Customer_ID;
