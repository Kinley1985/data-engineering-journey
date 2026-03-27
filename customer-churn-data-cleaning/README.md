# Telco Customer Churn Data Cleaning (SQL Project)

## Objective

This project focuses on cleaning and preparing a real-world telco customer churn dataset using SQL. The goal is to transform raw data into a structured and analysis-ready format.

---

## Dataset

* **Source:** Telco Customer Churn Dataset
* Contains customer demographics, subscription details, billing information, and churn status

---

## Tools & Skills Used

* SQL Server (SSMS)
* Data Cleaning & Transformation
* Data Type Conversion
* Handling Missing Values
* Data Validation

---

## Data Cleaning Process

### 1. Handling Missing Values

* Identified missing values in `TotalCharges`
* Replaced blank values with `NULL`
* Created a clean numeric version using:

```sql
TRY_CAST(TotalCharges AS DECIMAL(10,2))
```

### 2. Data Type Correction

* Converted incorrect data types (e.g., text to numeric)
* Ensured numerical fields are suitable for analysis

### 3. Fixing Data Structure

* Assigned `customerID` as Primary Key
* Adjusted column sizes to prevent truncation

### 4. Standardizing Data

* Cleaned inconsistent categorical values (e.g., service fields)
* Ensured uniform formatting across columns

---

## Sample SQL Query

```sql
SELECT 
    customerID,
    MonthlyCharges,
    TRY_CAST(TotalCharges AS DECIMAL(10,2)) AS TotalCharges
FROM telco_churn;
```

---

## Key Findings (Initial)

* Missing values were primarily found in `TotalCharges`
* Data type inconsistencies can cause import and analysis errors
* Proper schema design is critical for reliable data processing

---

## Project Status

In Progress – Next step is exploratory data analysis and churn insights

---

## Author

Aspiring Data Engineer | SQL Enthusiast
