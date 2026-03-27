-- =========================
-- TELCO CHURN DATA CLEANING & ANALYSIS
-- =========================

-- 1. View all data
SELECT * 
FROM telco_churn;


-- 2. Check missing values in TotalCharges
SELECT 
    COUNT(*) AS total_rows,
    COUNT(TotalCharges) AS non_null_totalcharges
FROM telco_churn;


-- 3. Identify invalid or non-numeric TotalCharges
SELECT *
FROM telco_churn
WHERE TRY_CAST(TotalCharges AS DECIMAL(10,2)) IS NULL
AND TotalCharges IS NOT NULL;


-- 4. Clean blank values (if not yet done)
UPDATE telco_churn
SET TotalCharges = NULL
WHERE LTRIM(RTRIM(TotalCharges)) = '';


-- 5. Create clean numeric column (if not yet created)
ALTER TABLE telco_churn
ADD TotalCharges_num DECIMAL(10,2);


-- 6. Convert TotalCharges to numeric
UPDATE telco_churn
SET TotalCharges_num = TRY_CAST(TotalCharges AS DECIMAL(10,2));


-- 7. Verify cleaned data
SELECT 
    customerID,
    TotalCharges,
    TotalCharges_num
FROM telco_churn;


-- 8. Explore categorical values
SELECT DISTINCT gender FROM telco_churn;


-- 9. Churn distribution
SELECT 
    Churn,
    COUNT(*) AS total_customers
FROM telco_churn
GROUP BY Churn;


-- 10. Contract type vs churn
SELECT 
    Contract,
    Churn,
    COUNT(*) AS total
FROM telco_churn
GROUP BY Contract, Churn
ORDER BY Contract;


-- 11. Churn rate
SELECT 
    COUNT(CASE WHEN Churn = 'Yes' THEN 1 END) * 1.0 / COUNT(*) AS churn_rate
FROM telco_churn;
