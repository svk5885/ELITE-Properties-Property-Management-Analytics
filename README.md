# 🏢 ELITE Properties – Property Management Analytics Dashboard

---

## 📌 Project Overview

ELITE Properties is an end-to-end **Property Management Analytics** solution developed using **MySQL** and **Power BI**. This project simulates a real-world property management reporting system by integrating operational and financial data into interactive dashboards that support executive decision-making.

The solution enables stakeholders to monitor property performance, optimize occupancy, analyze tenant activity, evaluate lease performance, track financial health, and identify business opportunities through intuitive and interactive reporting.

---

# 🎯 Business Objectives

This dashboard was developed to answer key business questions such as:

- How is the overall property portfolio performing?
- Which properties generate the highest rental revenue?
- What is the current occupancy rate?
- Which properties have the highest Net Operating Income (NOI)?
- Which tenants contribute the most revenue?
- Which tenants have outstanding balances?
- How effective is rent collection?
- What are the major operating expenses?
- How has financial performance changed over time?

---

# 🛠️ Technology Stack

| Technology | Purpose |
|------------|---------|
| **MySQL** | Database Design & Data Storage |
| **SQL** | Schema Design & Data Preparation |
| **Power BI Desktop** | Dashboard Development |
| **Power Query** | Data Transformation |
| **DAX** | Business Measure Development |
| **Git & GitHub** | Version Control & Portfolio |

---

# 🗄️ Data Model

The solution follows a **star-schema-inspired data model** consisting of dimension tables, transactional fact tables, and a bridge table to support efficient reporting and business analysis.

### Dimension Tables

- Calendar
- Properties
- Units
- Tenants

### Fact Tables

- Leases
- Invoices
- Payments
- Expenses

### Bridge Table

- Payment Allocations

The Calendar table is used for time intelligence, while DAX measures leverage active and inactive relationships where appropriate to support accurate financial reporting.

### Data Model

![Data Model](Data%20Model/PM%20Data%20Model.png)

---

# 📊 Dashboard Pages

---

## 🏠 Executive Overview

Provides an executive summary of the overall property portfolio.

### Key KPIs

- Total Properties
- Total Units
- Occupied Units
- Occupancy Rate
- Rental Revenue
- Net Operating Income (NOI)

### Dashboard Preview

![Executive Overview](Dashboard%20Screenshots/PM%20dashboard%201.png)

---

## 🏢 Property Performance Analytics

Compares operational and financial performance across individual properties.

### Key KPIs

- Average Monthly Rent
- Rental Revenue
- Total Expenses
- Net Operating Income
- Vacancy Rate

### Dashboard Preview

![Property Performance Analytics](Dashboard%20Screenshots/PM%20dashboard%202.png)

---

## 👥 Tenant & Lease Analytics

Provides insights into tenant behavior, lease performance, rent collection, and outstanding balances.

### Key KPIs

- Total Tenants
- Active Leases
- Rental Revenue
- Collection Rate
- Outstanding Balance
- Average Monthly Payment

### Dashboard Preview

![Tenant & Lease Analytics](Dashboard%20Screenshots/PM%20dashboard%203.png)

---

## 💰 Financial Performance Analytics

Provides financial reporting and profitability analysis.

### Key KPIs

- Rental Revenue
- Total Expenses
- Net Operating Income
- Net Cash Flow
- Profit Margin
- Expense-to-Revenue Ratio

### Dashboard Preview

![Financial Performance Analytics](Dashboard%20Screenshots/PM%20dashboard%204.png)

---

# 📈 Key Performance Indicators

- Rental Revenue
- Total Expenses
- Net Operating Income (NOI)
- Net Cash Flow
- Occupancy Rate
- Vacancy Rate
- Profit Margin
- Expense-to-Revenue Ratio
- Collection Rate
- Outstanding Balance
- Active Leases
- Average Monthly Rent
- Average Monthly Payment

---

# 🧠 DAX Highlights

This project demonstrates practical business-oriented DAX development using:

- CALCULATE()
- DIVIDE()
- DISTINCTCOUNT()
- USERELATIONSHIP()
- Time Intelligence with Calendar Table
- Filter Context
- Snapshot vs Transaction KPI Design

Business measures include:

- Rental Revenue
- Total Expenses
- Total Payments
- Net Operating Income (NOI)
- Net Cash Flow
- Profit Margin
- Expense-to-Revenue Ratio
- Collection Rate
- Outstanding Balance
- Occupancy Rate
- Vacancy Rate

---

# 💡 Business Insights

The dashboard enables stakeholders to:

- Monitor portfolio performance through executive KPIs.
- Identify top-performing properties by revenue and NOI.
- Track occupancy and vacancy across the portfolio.
- Analyze tenant payment behavior and outstanding balances.
- Evaluate lease activity and monthly rental revenue.
- Monitor operating expenses by category.
- Measure profitability using financial KPIs.
- Support strategic decision-making through interactive reporting.

---

# 📂 Repository Structure

```text
ELITE-Properties-Property-Management-Analytics
│
├── Dashboard Screenshots
│   ├── PM dashboard 1.png
│   ├── PM dashboard 2.png
│   ├── PM dashboard 3.png
│   └── PM dashboard 4.png
│
├── Data Model
│   └── PM Data Model.png
│
├── Power BI
│   └── ELITE Properties.pbix
│
├── SQL Database
│   ├── Schema.sql
│   ├── Insert_Data.sql
│   └── Additional SQL Scripts.sql
│
└── README.md
```

---

# 🚀 Skills Demonstrated

- SQL Database Design
- Relational Database Modeling
- Power BI
- Power Query
- DAX
- Data Modeling
- Business Intelligence
- Financial Analytics
- Property Management Analytics
- Dashboard Design
- KPI Development
- Data Visualization
- Analytical Storytelling

---

# 🔮 Future Enhancements

Potential future enhancements include:

- Budget vs Actual Analysis
- Forecasting & Trend Analysis
- Power BI Service Deployment
- Row-Level Security (RLS)
- Automated Data Refresh
- Mobile Dashboard Optimization
- Performance Optimization

---

# 👨‍💻 Author

## Vinod Kumar S

**Aspiring Data Analyst**

**Skills**

- SQL
- Power BI
- Python
- Excel
- Data Analytics
- Business Intelligence

---

## ⭐ If you found this project useful, please consider giving the repository a Star.

Thank you for visiting this project!
