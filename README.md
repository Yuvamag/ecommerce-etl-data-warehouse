# 🏬 E-Commerce ETL Data Warehouse

A complete end-to-end ETL pipeline for an e-commerce dataset — from raw CSV data to a star schema data warehouse in Microsoft SQL Server, with SCD Type 2 historical tracking and an interactive Power BI dashboard.

---

## 📌 Overview

Most businesses collect sales data but struggle to make sense of it. This project builds a **production-style data warehouse** that transforms messy raw e-commerce transactions into a clean, queryable star schema — enabling executive-level reporting and trend analysis through Power BI.

---

## 🏗️ Architecture

```
Raw CSV Data
     ↓
Python — Data Profiling & Cleaning
     ↓
SQL Server — Staging Layer
     ↓
Dimension Tables          Fact Table
(Customer, Product, Date) (Fact Sales)
     ↓
SCD Type 2 — Historical Tracking
     ↓
Analytical Views
     ↓
Power BI Dashboard
```

---

## 🗂️ Project Structure

```
├── python/
│   ├── data_profiling.py         # EDA and quality checks on raw data
│   └── data_cleaning.py          # Cleaning, transformation, staging load
│
├── sql/
│   ├── schema/                   # Table creation scripts
│   ├── dimensions/               # DimCustomer, DimProduct, DimDate
│   ├── fact/                     # FactSales load script
│   ├── staging/                  # Staging layer scripts
│   ├── scd_type2/                # SCD Type 2 implementation
│   ├── validation/               # Row count, null, integrity checks
│   └── analytical_views/         # Views used by Power BI
│
├── powerbi/
│   └── ecommerce_dashboard.pbix  # Power BI report file
│
├── images/
│   ├── dashboard_page1.png       # Executive overview screenshot
│   └── dashboard_page2.png       # Time performance screenshot
│
└── README.md
```

---

## 🛠️ Tech Stack

![Python](https://img.shields.io/badge/Python-3.x-blue?logo=python)
![Pandas](https://img.shields.io/badge/Pandas-2.x-150458?logo=pandas)
![SQL Server](https://img.shields.io/badge/SQL%20Server-SSMS%2021-CC2927?logo=microsoftsqlserver)
![T-SQL](https://img.shields.io/badge/T--SQL-Microsoft-CC2927)
![Power BI](https://img.shields.io/badge/Power%20BI-Dashboard-F2C811?logo=powerbi)

---

## 📐 Data Warehouse Design

### Star Schema

```
          DimDate
             |
DimCustomer — FactSales — DimProduct
```

### Dimension Tables

| Table | Key Columns | SCD Type |
|---|---|---|
| `DimCustomer` | CustomerKey, Name, Region, Segment | Type 2 |
| `DimProduct` | ProductKey, Category, Sub-Category, Price | Type 2 |
| `DimDate` | DateKey, Year, Month, Quarter, Weekday | Static |

### Fact Table

| Table | Measures |
|---|---|
| `FactSales` | Sales, Profit, Quantity, Discount |

---

## 🔄 SCD Type 2 — Historical Tracking

Slowly Changing Dimension Type 2 is implemented on `DimCustomer` and `DimProduct` to preserve the full history of changes over time.

Each row includes:

| Column | Purpose |
|---|---|
| `StartDate` | When this version became active |
| `EndDate` | When this version was superseded (`NULL` = current) |
| `IsCurrent` | Flag for the active record (`1` = current) |

This means if a customer's region changes or a product's price is updated, the old record is closed and a new one is inserted — preserving historical accuracy in all sales reporting.

---

## 📊 Power BI Dashboard

### Page 1 — Executive Overview

| KPI | Visual |
|---|---|
| Total Sales | Card |
| Total Profit | Card |
| Total Quantity | Card |
| Profit Margin % | Card |
| Sales by Region | Map / Bar Chart |
| Sales by Category | Bar Chart |
| Sales Trend by Year | Line Chart |

### Page 2 — Time Performance Analysis

| Visual | Description |
|---|---|
| Monthly Sales | Line chart with year slicer |
| Monthly Profit | Bar chart with KPI indicator |
| Year-over-Year | Comparison with prior period |

---

## 💡 Business Insights Delivered

- **Revenue by region** — identify top and underperforming markets
- **Category profitability** — see which product lines drive the most margin
- **Trend analysis** — track sales growth or decline month over month
- **Historical accuracy** — SCD Type 2 ensures reports reflect what was true *at the time*, not just today's data
- **Executive KPIs** — at-a-glance metrics for business decision-making

---

## ⚙️ Setup & Usage

### Prerequisites

- Python 3.x with `pandas`, `pyodbc` installed
- Microsoft SQL Server (any edition)
- SQL Server Management Studio 21
- Power BI Desktop

### Steps

**1. Clone the repository**
```bash
git clone https://github.com/your-username/ecommerce-etl-datawarehouse.git
cd ecommerce-etl-datawarehouse
```

**2. Install Python dependencies**
```bash
pip install pandas pyodbc sqlalchemy
```

**3. Run data profiling & cleaning**
```bash
python python/data_profiling.py
python python/data_cleaning.py
```

**4. Set up SQL Server**

Run scripts in this order in SSMS:
```
sql/schema/         → create tables
sql/staging/        → load staging data
sql/dimensions/     → populate dimension tables
sql/fact/           → load FactSales
sql/scd_type2/      → apply SCD Type 2 logic
sql/validation/     → verify row counts & integrity
sql/analytical_views/ → create reporting views
```

**5. Open Power BI**

Open `powerbi/ecommerce_dashboard.pbix` and update the SQL Server connection string to point to your local instance.

---

## 📸 Dashboard Preview

> Screenshots available in the `images/` folder.

---

## 🎯 Key Concepts Demonstrated

- End-to-end ETL pipeline design
- Dimensional modelling (star schema)
- SCD Type 2 implementation in T-SQL
- Staging layer architecture
- Data validation and integrity checks
- Business intelligence reporting with Power BI

---

## 👤 Author

**Your Name**
Department of Computer Science / Data Science
Your College Name

---

## 📜 License

This project is for educational and portfolio purposes.
