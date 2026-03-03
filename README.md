# 🏬 E-Commerce End-to-End ETL Data Warehouse Project

## 📌 Project Overview
This project demonstrates a complete end-to-end ETL pipeline for an E-Commerce dataset using Python and Microsoft SQL Server.  
The solution implements a Star Schema Data Warehouse with SCD Type 2 history tracking and interactive Power BI dashboard reporting.

The objective was to design a scalable analytical data model capable of supporting executive-level business insights.

---

## 🏗️ Architecture

- Raw Source Data (CSV)
- Python Data Profiling & Cleaning
- SQL Server Staging Layer
- Dimension & Fact Tables (Star Schema)
- SCD Type 2 Implementation for Historical Tracking
- Analytical Views for Reporting
- Power BI Dashboard

---

## 🛠️ Tech Stack

- Python (Pandas, Data Cleaning, Profiling)
- T-SQL (Microsoft SQL Server)
- SQL Server Management Studio 21
- Power BI
- GitHub

---

## 📂 Project Structure

```
python/     -> Data profiling & cleaning scripts
sql/        -> Schema, dimensions, fact, staging, validations, analytical views
powerbi/    -> Power BI dashboard file (.pbix)
images/     -> Dashboard screenshots
```

---

## 📊 Data Warehouse Features

✔ Star Schema Design  
✔ Dimension Tables (Customer, Product, Date)  
✔ Fact Sales Table  
✔ SCD Type 2 Historical Implementation  
✔ Data Validation & Quality Checks  
✔ Analytical SQL Views for BI reporting  

---

## 📈 Power BI Dashboard

### Page 1: Executive Overview
- Total Sales
- Total Profit
- Total Quantity
- Profit Margin %
- Sales by Region
- Sales by Category
- Sales Trend by Year

### Page 2: Time Performance Analysis
- Monthly Sales
- Monthly Profit
- Year Slicers
- KPI Indicators

Dashboard screenshots are available in the `/images` folder.

---

## 🎯 Business Insights Delivered

- Revenue performance tracking across regions
- Category-level profitability analysis
- Time-based sales trend evaluation
- Executive KPI monitoring for strategic decision-making
- Historical data analysis using SCD Type 2

---

## 🚀 Key Learning Outcomes

- End-to-end ETL pipeline development
- Dimensional modeling using Star Schema
- Implementation of Slowly Changing Dimensions (SCD Type 2)
- Data validation and referential integrity checks
- BI dashboard development for executive reporting
