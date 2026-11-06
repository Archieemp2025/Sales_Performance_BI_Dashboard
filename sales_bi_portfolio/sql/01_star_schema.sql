-- Microsoft Fabric Warehouse compatible conceptual star schema (T-SQL)
-- In Fabric Lakehouse, load the corresponding CSVs as Delta tables instead.
CREATE TABLE dbo.DimCustomer (CustomerID VARCHAR(10), CustomerName VARCHAR(100), Segment VARCHAR(40), HomeRegion VARCHAR(50), SignupDate DATE);
CREATE TABLE dbo.DimProduct (ProductID VARCHAR(10), ProductName VARCHAR(100), Category VARCHAR(60), ListPriceAUD DECIMAL(12,2));
CREATE TABLE dbo.FactOrder (OrderID VARCHAR(15), OrderDate DATE, CustomerID VARCHAR(10), Region VARCHAR(50), Channel VARCHAR(30), Status VARCHAR(20));
CREATE TABLE dbo.FactOrderLine (LineID VARCHAR(15), OrderID VARCHAR(15), ProductID VARCHAR(10), Quantity INT, UnitPriceAUD DECIMAL(12,2), LineRevenueAUD DECIMAL(14,2));
-- Create DimDate using Power Query or SQL, and relate it to FactOrder[OrderDate].
