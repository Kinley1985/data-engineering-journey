-- 1. View all data
SELECT * FROM customer_churn;

-- 2. Check missing values
SELECT 
    COUNT(*) AS total_rows,
    COUNT(total_charges) AS non_null_total_charges
FROM customer_churn;

-- 3. Handle missing values
SELECT 
    customer_id,
    COALESCE(total_charges, 0) AS total_charges
FROM customer_churn;

-- 4. Standardize categorical values
SELECT DISTINCT gender FROM customer_churn;

-- 5. Churn distribution
SELECT 
    churn,
    COUNT(*) AS total_customers
FROM customer_churn
GROUP BY churn;

-- 6. Contract type vs churn
SELECT 
    contract,
    churn,
    COUNT(*) AS total
FROM customer_churn
GROUP BY contract, churn
ORDER BY contract;
