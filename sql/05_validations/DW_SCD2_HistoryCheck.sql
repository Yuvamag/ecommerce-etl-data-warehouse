SELECT Customer_ID, COUNT(*) AS versions
FROM warehouse.Customer_Dim
GROUP BY Customer_ID
HAVING COUNT(*) > 1;