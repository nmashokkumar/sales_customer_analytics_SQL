# 📊 Sales, Customer & Product Business Analytics (SQL)

## 🚀 Project Overview
This project demonstrates **end-to-end business analytics using SQL** on a relational sales database.  
The focus is on **data integrity**, **correct relational modeling**, and **answering decision-driven business questions** using **clean, production-style SQL**.

It simulates a **real-world analytics workflow** where raw transactional data is validated, modeled, and analyzed to generate **reliable business insights**.

---

## 🏢 Business Context
Organizations rely heavily on **sales, customer, and product data** to understand:
- Revenue performance
- Customer value
- Product effectiveness

However, **poor joins, weak data validation, or misunderstood data grain** can lead to **misleading insights**.

This project mirrors a **professional analytics environment**, where the analyst is responsible not just for writing queries—but for **ensuring data quality before influencing business decisions**.

---

## ❓ Business Problems Addressed
This analysis answers key business questions such as:

- 💰 How much revenue is the business generating, and how does it trend over time?
- 📦 Which products and categories contribute most to revenue?
- 📈 Are revenue changes driven by **higher volume** or **pricing changes**?
- 👥 Who are the most valuable customers, and how concentrated is revenue?
- 🧪 Are there data quality issues (duplicates, orphan records, invalid dates) impacting analysis?

---

## 🛠️ Approach & Methodology
The project follows a **structured, industry-aligned analytics workflow**:

### 1️⃣ Schema Design & Data Setup
- Designed a **star schema** with:
  - Sales fact table
  - Customer and product dimension tables
- Enforced **primary and foreign key constraints** to maintain relational integrity

### 2️⃣ Schema Validation & Business Rules
- Validated:
  - Table grain
  - Key uniqueness
  - Referential integrity
  - Date logic and revenue calculations
- Identified and documented **orphan records** instead of deleting raw data

### 3️⃣ Clean Joins & Star Schema Analysis
- Built **safe fact-to-dimension joins** without duplicating revenue
- Created **reusable CTE-based base datasets** for consistent analysis

### 4️⃣ Sales & Revenue Analysis
- Analyzed:
  - Total revenue
  - Time-based trends
  - Pricing vs volume behavior
  - Top-performing products and categories

### 5️⃣ Customer Business-Driven Analysis
- Evaluated:
  - Customer value concentration
  - Repeat purchasing behavior
  - Customer-level revenue contribution
- Insights designed to support **business and strategic decisions**

---

## 📁 File Structure & Descriptions

- **Init_database.sql**  
  Creates the complete database schema and loads all data in a single execution.

- **schema_validation_business_rules.sql**  
  Validates data quality, table grain, key integrity, and business rules.

- **joins_star_schema_analysis.sql**  
  Builds clean star-schema joins and reusable base datasets.

- **sales_revenue_analysis.sql**  
  Answers core sales and revenue performance questions.

- **Customer_Business-Driven_Analysis.sql**  
  Focuses on customer value, behavior, and business-driven insights.

---

## ▶️ How to Run the Project

### 🔹 1. Clone the Repository
```bash
git clone https://github.com/nmashokkumar/sales_customer_analytics_SQL.git
cd sales_customer_analytics_SQL
```
### 🔹2. Create Schema & Load Data (One-Click Setup)

Run the initialization script to create all tables and insert data:
```
SOURCE Init_database.sql;
```
- This script:

- Creates all tables
 - Applies constraints
 - Loads data automatically

### 🔹3. Run Analysis Scripts
- Execute the remaining SQL files in order:
```
SOURCE schema_validation_business_rules.sql;
SOURCE joins_star_schema_analysis.sql;
SOURCE sales_revenue_analysis.sql;
SOURCE Customer_Business-Driven_Analysis.sql;
```
## 🔹Key Skills Demonstrated

 - Relational data modeling (star schema)
 - SQL joins, aggregations, CTEs, and window functions
 - Data validation and business rule enforcement
 - Time-based and customer-level analysis
 - Translating SQL outputs into business insights

## Author
- Ashok Kumar N
- Aspiring Data Analyst / Associate Data Scientist
