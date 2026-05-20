# PuddleWarehouse_SQL
Database Architecture
The database consists of 9 normalized tables handling key operational areas of the warehouse:
  - Inventory & Products: Products, Category, Locations (tracking storerooms and aisles).
  - Sales & Logistics: Orders, OrderDetails, Shipper.
  - CRM & Supply Chain: Customer, Supplier, Addresses.

Data Integrity Features
Primary keys with identity auto-incrementation.
Enforced business logic via CHECK constraints (preventing negative inventory values and invalid Reorder Points).

Business Metrics & Data Analysis
The script includes relational analytical queries using complex joins (LEFT JOIN), aggregations (SUM, COUNT), and filtering (GROUP BY, HAVING) to extract operational insights:
  - Financial Analysis: Calculation of total cumulative revenue and granularity down to individual order values.
  - Logistics Performance: Monitoring delivery volumes handled by individual shipping providers.
  - Inventory Control: Tracking stock levels specifically within designated warehouse zones (Storeroom A) and auditing product reorder points.
  - Geographical Insights: Filtering customer and supply chain data based on international locations (e.g., UK, UAE).
