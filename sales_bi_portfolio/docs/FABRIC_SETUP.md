# Fabric + Power BI implementation

1. Create a Fabric-enabled workspace and a Lakehouse.
2. Upload customers.csv, products.csv, orders.csv and order_lines.csv into Files (raw/).
3. Use Dataflow Gen2 or a Data Factory pipeline to ingest CSV files, enforce types, check null/duplicate IDs, and load four managed Delta tables into Tables. Keep the original raw files for traceability.
4. Create a DimDate table and ensure order date columns are Date typed.
5. Create a Power BI semantic model over the Lakehouse Delta tables. Choose Direct Lake where supported; Direct Lake is not enabled by merely loading CSVs.
6. Relationships: DimCustomer[CustomerID] (1) -> FactOrder[CustomerID] (*); DimProduct[ProductID] (1) -> FactOrderLine[ProductID] (*); FactOrder[OrderID] (1) -> FactOrderLine[OrderID] (*); DimDate[Date] (1) -> FactOrder[OrderDate] (*). Use single-direction filters from dimensions to facts, and validate cross-filter propagation for customer/date slicers into order lines.
7. Create the measures from powerbi/measures.dax; mark DimDate as date table.
8. Report pages: Executive Overview, Revenue Trends, Customer Performance. Add Year/Month, Region, Category, Channel, Segment slicers.
9. Executive Overview: KPI cards (Revenue, YoY Growth, Transactions, AOV, Active Customers); line chart YearMonth vs Revenue; bar Region vs Revenue; bar Category vs Revenue.
10. Customer Performance: top customers table; repeat customer rate; revenue by segment.
11. Validate totals and time intelligence. Save the native PBIX from Power BI Desktop, or create/export a PBIT from Desktop when available. This repository does not contain a generated PBIX/PBIT.

## Important modelling caveat
The supplied denormalised sales_fact.csv is for the HTML demo and quick Power BI import. For a genuine star-schema semantic model, use the four normalized source CSVs instead. Direct Lake requires Fabric Delta tables and compatible capacity/permissions.
