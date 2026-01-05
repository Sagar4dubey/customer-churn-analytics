# 📊 Customer Churn & Revenue Risk Analytics

## 🔍 Project Overview
This project focuses on analyzing **customer churn behavior** and identifying **revenue at risk** using a real-world telecom dataset.  
The objective is to help businesses proactively detect high-risk customers and take data-driven retention actions.

The analysis covers:
- Customer segmentation based on churn risk
- Revenue contribution by churn category
- Identification of high-risk customers impacting future revenue

---

## 🛠 Tech Stack
- **Python** (Pandas) – Data ingestion & processing
- **SQLite** – Structured data storage & SQL analytics
- **SQL** – Business logic & churn segmentation
- **Power BI** – Interactive dashboard & data visualization

---

## 📂 Dataset
- **Source:** IBM Telco Customer Churn Dataset
- **Records:** 7,000+ customers
- **Key Fields:**
  - `customerID`
  - `tenure`
  - `Contract`
  - `MonthlyCharges`
  - `TotalCharges`
  - `Churn`

---

## 🧠 Business Logic

### Churn Segmentation
Customers are classified into three segments:

- **Churned**  
  Customers who have already left the service.

- **High Risk**  
  Customers with:
  - Month-to-month contracts  
  - Tenure less than 12 months  
  - Currently active but likely to churn

- **Active**  
  Long-term or low-risk customers.

### Revenue at Risk
Revenue at risk is calculated as the **monthly charges of high-risk customers**, representing potential future revenue loss.

---

## ⚙️ Data Pipeline
1. CSV data ingestion using Python
2. Data stored in SQLite database
3. Data cleaning and transformation using SQL
4. Analytical view creation for reporting
5. Dashboard creation in Power BI

---

## 📈 Power BI Dashboard Features

### Key KPIs
- **Total Customers**
- **Churned Customers**
- **Churn Rate (%)**
- **Revenue at Risk**

### Visual Insights
- Customer distribution by churn status
- Monthly revenue by churn segment
- High-risk customer table for targeted action

---

## 🖼 Dashboard Preview
Uploaded a png file.

---

## 🚀 How to Run the Project

### 1️⃣ Load Data into SQLite
```bash
python load_csv_to_sqlite.py

