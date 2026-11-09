# Sales Performance & Business Intelligence Analytics

**Portfolio demonstration**

## Live dashboard
Open `dashboard.html` in any modern browser (no server or internet required). Filter by year, region, category, channel and customer segment. All KPI cards and charts recalculate from `sales_fact.csv` embedded into the HTML for offline use.

## KPIs
Total Revenue (AUD); YoY Sales Growth (matched date-period comparison); Transaction Volume (distinct OrderIDs); Average Order Value (Revenue / distinct orders); Active Customers (distinct CustomerIDs); Repeat Customer Rate (customers with >1 distinct order / active customers).

## Files
- `dashboard.html`: interactive offline HTML dashboard
- `data/`: customers, products, orders, order lines, denormalised sales fact
- `sql/`: Fabric Warehouse example schema, quality checks and monthly analytics
- `powerbi/`: DAX measures, date table, Power Query guidance
- `docs/FABRIC_SETUP.md`: instructions for Fabric Delta ingestion and native Power BI reconstruction

## Important distinctions
This is a working HTML dashboard and a Power BI-ready source package, **not** a native PBIX/PBIT. Power BI Desktop must be used to build/save the native report. Fabric Data Factory pipelines and Direct Lake are architecture instructions, not deployed services in this repository. The SQL is a starting example and may need adaptation to your environment.

## Suggested portfolio description
Built an end-to-end sales analytics demonstration with synthetic transactional data, dimensional modelling, SQL data quality checks, reusable DAX measures and an interactive executive dashboard. Documented a Microsoft Fabric Lakehouse/Direct Lake implementation pathway.

## Privacy
All customer names and transactions are fictional.
