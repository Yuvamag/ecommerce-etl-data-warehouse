-- Check if multiple current records exist for same customer
SELECT Customer_ID, COUNT(*) AS cnt
FROM warehouse.Customer_Dim
WHERE Is_Current = 1
GROUP BY Customer_ID
HAVING COUNT(*) > 1;