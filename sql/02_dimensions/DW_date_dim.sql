CREATE TABLE warehouse.Date_Dim (
    
    Date_Key INT PRIMARY KEY,      -- Format: YYYYMMDD
    
    Full_Date DATE NOT NULL,
    Year INT NOT NULL,
    Quarter INT NOT NULL,
    Month INT NOT NULL,
    Month_Name NVARCHAR(20) NOT NULL,
    Day INT NOT NULL,
    Day_Name NVARCHAR(20) NOT NULL
);