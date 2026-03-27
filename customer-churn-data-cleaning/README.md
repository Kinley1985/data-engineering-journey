#  Customer Churn Data Cleaning Project

##  Objective
This project focuses on cleaning and preparing customer churn data using SQL to make it ready for analysis and reporting.

---

##  Dataset
- **Source:** Telco Customer Churn Dataset  
- The dataset contains customer information such as demographics, services, and churn status.

---

##  Skills & Tools
- SQL  
- Data Cleaning  
- Data Transformation  
- Data Validation  

---

##  Data Cleaning Tasks
- Removed duplicate records  
- Handled missing values using appropriate techniques  
- Standardized inconsistent text fields (e.g., gender, contract type)  
- Converted data types for accurate analysis  
- Cleaned and formatted date and numeric fields  

---

##  Sample SQL Work
```sql
SELECT 
    customer_id,
    COALESCE(total_charges, 0) AS total_charges
FROM customers;
```

---

##  Key Insights (to be updated)
- Customers with shorter contracts tend to churn more  
- Missing values were mostly found in total charges  
- Data inconsistencies were identified in categorical columns  

---

##  Project Status
 In Progress – continuously improving and adding insights

---

##  Author
Aspiring Data Engineer | SQL Enthusiast
