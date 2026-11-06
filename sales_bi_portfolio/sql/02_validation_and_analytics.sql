-- Data quality: should return zero rows
SELECT OrderID, COUNT(*) AS RowCount FROM dbo.FactOrder GROUP BY OrderID HAVING COUNT(*) > 1;
SELECT l.OrderID FROM dbo.FactOrderLine l LEFT JOIN dbo.FactOrder o ON l.OrderID=o.OrderID WHERE o.OrderID IS NULL;
SELECT l.ProductID FROM dbo.FactOrderLine l LEFT JOIN dbo.DimProduct p ON l.ProductID=p.ProductID WHERE p.ProductID IS NULL;
SELECT COUNT(*) AS NegativeRevenueRows FROM dbo.FactOrderLine WHERE LineRevenueAUD < 0;
-- Monthly sales, distinct order count and AOV
SELECT YEAR(o.OrderDate) AS SalesYear, MONTH(o.OrderDate) AS SalesMonth,
 SUM(l.LineRevenueAUD) AS RevenueAUD, COUNT(DISTINCT o.OrderID) AS Orders,
 SUM(l.LineRevenueAUD)/NULLIF(COUNT(DISTINCT o.OrderID),0) AS AOV
FROM dbo.FactOrder o JOIN dbo.FactOrderLine l ON o.OrderID=l.OrderID
GROUP BY YEAR(o.OrderDate),MONTH(o.OrderDate) ORDER BY SalesYear,SalesMonth;
