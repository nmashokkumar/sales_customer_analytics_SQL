# Sales, Customer & Product Business Analytics (SQL)

## Overview
This project demonstrates end-to-end business analytics using SQL on a relational sales database. The focus is on data integrity, correct relational modeling, and answering decision-driven business questions using clean, production-style SQL.

The project simulates a real-world analytics workflow where raw transactional data is validated, modeled, and analyzed to generate meaningful business insights.

---

## Business Context
Organizations rely on sales, customer, and product data to understand revenue performance, customer value, and product effectiveness. However, inaccurate joins, poor data validation, or misunderstood data grain can lead to misleading insights.

This project mirrors a real analytics environment where the analyst is responsible for ensuring data quality before producing insights that influence business decisions.

---

## Business Problems Addressed
The project answers key business questions such as:
- How much revenue is the business generating and how does it trend over time?
- Which products and categories drive the majority of revenue?
- Are revenue changes driven by volume or pricing?
- Who are the most valuable customers and how concentrated is revenue?
- Are there data quality issues (duplicates, orphan records, invalid dates) that impact analysis?

---

## Approach & Methodology
The analysis follows a structured, professional workflow:

1. **Schema Design & Data Setup**
   - Implemented a star schema with a sales fact table and customer and product dimensions.
   - Enforced primary and foreign key constraints to maintain relational integrity.

2. **Schema Validation & Business Rules**
   - Validated table grain, key uniqueness, referential integrity, date logic, and revenue calculations.
   - Identified and documented orphan records instead of deleting raw data.

3. **Clean Joins & Star Schema Analysis**
   - Built safe fact-to-dimension joins without duplicating revenue.
   - Created reusable CTE-based datasets for consistent downstream analysis.

4. **Sales & Revenue Analysis**
   - Analyzed total revenue, time-based trends, pricing vs volume behavior, and top-performing products.

5. **Customer Business-Driven Analysis**
   - Evaluated customer value concentration, repeat behavior, and customer-level revenue contribution to support business decision-making.

---


### File Descriptions
- **Init_database.sql**  
  Creates the database schema and loads data in a single execution.

- **schema_validation_business_rules.sql**  
  Validates data quality, table grain, key integrity, and business rules.

- **joins_star_schema_analysis.sql**  
  Builds clean star-schema joins and reusable base datasets.

- **sales_revenue_analysis.sql**  
  Answers core revenue and sales performance questions.

- **Customer_Business-Driven_Analysis.sql**  
  Focuses on customer value, behavior, and business-driven insights.

---

## How to Run the Project

### 1. Clone the Repository
```bash
git clone https://github.com/nmashokkumar/sales_customer_analytics_SQL.git
cd https://github.com/nmashokkumar/sales_customer_analytics_SQL.git
```
### 2. Create Schema & Load Data (One-Click Setup)

Run the initialization script to create all tables and insert data:
```
SOURCE Init_database.sql;
```
- This script:

- Creates all tables
 - Applies constraints
 - Loads data automatically

### 3. Run Analysis Scripts
- Execute the remaining SQL files in order:
```
SOURCE schema_validation_business_rules.sql;
SOURCE joins_star_schema_analysis.sql;
SOURCE sales_revenue_analysis.sql;
SOURCE Customer_Business-Driven_Analysis.sql;
```
## Key Skills Demonstrated

 - Relational data modeling (star schema)
 - SQL joins, aggregations, CTEs, and window functions
 - Data validation and business rule enforcement
 - Time-based and customer-level analysis
 - Translating SQL outputs into business insights

## Author
- Ashok Kumar N
- Aspiring Data Analyst / Associate Data Scientist
