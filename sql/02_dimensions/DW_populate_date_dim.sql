DECLARE @StartDate DATE = '2014-01-03';
DECLARE @EndDate   DATE = '2017-12-30';

WHILE @StartDate <= @EndDate
BEGIN
    INSERT INTO warehouse.Date_Dim
    VALUES (
        CAST(CONVERT(VARCHAR(8), @StartDate, 112) AS INT), -- YYYYMMDD
        @StartDate,
        YEAR(@StartDate),
        DATEPART(QUARTER, @StartDate),
        MONTH(@StartDate),
        DATENAME(MONTH, @StartDate),
        DAY(@StartDate),
        DATENAME(WEEKDAY, @StartDate)
    );

    SET @StartDate = DATEADD(DAY, 1, @StartDate);
END;