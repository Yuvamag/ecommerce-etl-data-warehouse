DECLARE @StartDate DATE = '2017-12-31';
DECLARE @EndDate   DATE = '2018-01-05';

WHILE @StartDate <= @EndDate
BEGIN
    IF NOT EXISTS (
        SELECT 1 
        FROM warehouse.Date_Dim
        WHERE Full_Date = @StartDate
    )
    BEGIN
        INSERT INTO warehouse.Date_Dim
        VALUES (
            CAST(CONVERT(VARCHAR(8), @StartDate, 112) AS INT),
            @StartDate,
            YEAR(@StartDate),
            DATEPART(QUARTER, @StartDate),
            MONTH(@StartDate),
            DATENAME(MONTH, @StartDate),
            DAY(@StartDate),
            DATENAME(WEEKDAY, @StartDate)
        );
    END

    SET @StartDate = DATEADD(DAY, 1, @StartDate);
END;