/* FULL TIME FINANCIAL ANALYSIS */
-- 1. Insight: Loan Default Rates by Verification Status and Credit Grade
SELECT 
    grade, 
    verification_status, 
    COUNT(*) AS total_loans,
    SUM(CASE WHEN loan_status = 'Charged Off' THEN 1 ELSE 0 END) AS charged_off_count,
    ROUND(SUM(CASE WHEN loan_status = 'Charged Off' THEN 1 ELSE 0 END) * 1.0 / COUNT(*) * 100, 2) AS default_rate
FROM 
    financial_loan
GROUP BY 
    grade, 
    verification_status
ORDER BY 
    grade, 
    verification_status;


-- 2. Insight: Impact of Debt-to-Income Ratio on Loan Performance
SELECT 
    dti, 
    COUNT(*) AS total_loans,
    SUM(CASE WHEN loan_status = 'Charged Off' THEN 1 ELSE 0 END) AS charged_off_count,
    ROUND(SUM(CASE WHEN loan_status = 'Charged Off' THEN 1 ELSE 0 END) * 1.0 / COUNT(*) * 100, 2) AS default_rate,
    ROUND(AVG(int_rate), 2) AS avg_int_rate,
    ROUND(CAST(AVG(loan_amount) AS NUMERIC), 2) AS avg_loan_amount
FROM 
    financial_loan
GROUP BY 
    dti
ORDER BY 
    dti;

-- 3. Insight: Loan Performance Over Time by State and Credit Grade
WITH loan_performance AS (
    SELECT
        address_state,
        grade,
        DATE_TRUNC('month', issue_date) AS issue_month,
        loan_status,
        COUNT(*) OVER (PARTITION BY address_state, grade, DATE_TRUNC('month', issue_date)) AS total_loans,
        SUM(CASE WHEN loan_status = 'Charged Off' THEN 1 ELSE 0 END) OVER (PARTITION BY address_state, grade, DATE_TRUNC('month', issue_date)) AS charged_off_count
    FROM financial_loan
)	
SELECT
    address_state,
    grade,
    issue_month,
    total_loans,
    charged_off_count,
    ROUND((charged_off_count * 1.0 / total_loans) * 100, 2) AS default_rate
FROM loan_performance
GROUP BY
    address_state,
    grade,
    issue_month,
    total_loans,
    charged_off_count
ORDER BY
    address_state,
    grade,
    issue_month;

-- 4. Insight: Cohort Analysis of Borrower Repayment Behavior
WITH cohorts AS (
    SELECT
        DISTINCT (EXTRACT(month FROM issue_date)) AS cohort_month,
        EXTRACT(MONTH FROM AGE(COALESCE(last_payment_date::DATE, NOW()::DATE), issue_date::DATE)) AS month_since_issue,
        loan_status,
        COUNT(*) OVER (PARTITION BY EXTRACT(month FROM issue_date)) AS total_loans,
        SUM(CASE WHEN loan_status = 'Fully Paid' THEN 1 ELSE 0 END) OVER (PARTITION BY DATE_TRUNC('month', issue_date)) AS fully_paid_count,
        SUM(CASE WHEN loan_status = 'Charged Off' THEN 1 ELSE 0 END) OVER (PARTITION BY DATE_TRUNC('month', issue_date)) AS charged_off_count
    FROM financial_loan
)
SELECT
    cohort_month,
    month_since_issue,
    total_loans,
    fully_paid_count,
    charged_off_count,
    ROUND((fully_paid_count * 1.0 / total_loans) * 100, 2) AS fully_paid_rate,
    ROUND((charged_off_count * 1.0 / total_loans) * 100, 2) AS charged_off_rate
FROM cohorts
GROUP BY
    cohort_month,
    month_since_issue,
    total_loans,
    fully_paid_count,
    charged_off_count
ORDER BY
    cohort_month,
    month_since_issue;

-- 5. Insight: Loan Performance by Employment Length and Annual Income
-- Step 1: Create a temporary table to categorize annual income into ranges
CREATE TEMP TABLE income_categories AS
SELECT
    *,
    CASE
        WHEN annual_income < 50000 THEN 'Less than 50k'
        WHEN annual_income BETWEEN 50000 AND 100000 THEN '50k-100k'
        WHEN annual_income BETWEEN 100001 AND 150000 THEN '100k-150k'
        WHEN annual_income BETWEEN 150001 AND 200000 THEN '150k-200k'
        ELSE 'More than 200k'
    END AS income_range
FROM financial_loan;

-- Step 2: Create a CTE to calculate loan performance metrics
WITH loan_performance AS (
    SELECT
        income_range,
        emp_length,
        loan_status,
        COUNT(*) OVER (PARTITION BY income_range, emp_length) AS total_loans,
        SUM(CASE WHEN loan_status = 'Fully Paid' THEN 1 ELSE 0 END) OVER (PARTITION BY income_range, emp_length) AS fully_paid_count,
        SUM(CASE WHEN loan_status = 'Charged Off' THEN 1 ELSE 0 END) OVER (PARTITION BY income_range, emp_length) AS charged_off_count
    FROM income_categories
)
SELECT
    income_range,
    emp_length,
    total_loans,
    fully_paid_count,
    charged_off_count,
    ROUND((fully_paid_count * 1.0 / total_loans) * 100, 2) AS fully_paid_rate,
    ROUND((charged_off_count * 1.0 / total_loans) * 100, 2) AS charged_off_rate,
	ROUND(AVG((fully_paid_count * 1.0 / total_loans) * 100) OVER (PARTITION BY income_range ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING), 2) AS running_avg_fully_paid_rate,
    ROUND(AVG((charged_off_count * 1.0 / total_loans) * 100) OVER (PARTITION BY income_range ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING), 2) AS running_avg_charged_off_rate
FROM loan_performance
GROUP BY
    income_range,
    emp_length,
    total_loans,
    fully_paid_count,
    charged_off_count
ORDER BY
    income_range,
    emp_length;

-- 6. Insight: Loan Performance by Debt-to-Income (DTI) Ratio
-- Step 1: Create a temporary table to categorize DTI into ranges
CREATE TEMP TABLE dti_categories AS
SELECT
    *,
    CASE
        WHEN dti < 10 THEN '0-10%'
        WHEN dti BETWEEN 10 AND 20 THEN '10-20%'
        WHEN dti BETWEEN 21 AND 30 THEN '21-30%'
        WHEN dti BETWEEN 31 AND 40 THEN '31-40%'
        ELSE 'More than 40%'
    END AS dti_range
FROM financial_loan;

-- Step 2: Create a CTE to calculate loan performance metrics
WITH loan_performance AS (
    SELECT
        dti_range,
        loan_status,
        COUNT(*) OVER (PARTITION BY dti_range) AS total_loans,
        SUM(CASE WHEN loan_status = 'Fully Paid' THEN 1 ELSE 0 END) OVER (PARTITION BY dti_range) AS fully_paid_count,
        SUM(CASE WHEN loan_status = 'Charged Off' THEN 1 ELSE 0 END) OVER (PARTITION BY dti_range) AS charged_off_count
    FROM dti_categories
)
-- Step 3: Calculate averages using window functions and running averages using sliding window functions
SELECT
    dti_range,
    total_loans,
    fully_paid_count,
    charged_off_count,
    ROUND((fully_paid_count * 1.0 / total_loans) * 100, 2) AS fully_paid_rate,
    ROUND((charged_off_count * 1.0 / total_loans) * 100, 2) AS charged_off_rate,
    ROUND(AVG((fully_paid_count * 1.0 / total_loans) * 100) OVER (PARTITION BY dti_range ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING), 2) AS running_avg_fully_paid_rate,
    ROUND(AVG((charged_off_count * 1.0 / total_loans) * 100) OVER (PARTITION BY dti_range ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING), 2) AS running_avg_charged_off_rate
FROM loan_performance
GROUP BY
    dti_range,
    total_loans,
    fully_paid_count,
    charged_off_count
ORDER BY
    dti_range;


-- 7. Insight: Loan Performance by Loan Amount
-- Step 1: Create a temporary table to categorize loan amounts into ranges
CREATE TEMP TABLE loan_amount_categories AS
SELECT
    *,
    CASE
        WHEN loan_amount < 5000 THEN 'Less than $5k'
        WHEN loan_amount BETWEEN 5000 AND 10000 THEN '$5k-$10k'
        WHEN loan_amount BETWEEN 10001 AND 15000 THEN '$10k-$15k'
        WHEN loan_amount BETWEEN 15001 AND 20000 THEN '$15k-$20k'
        ELSE 'More than $20k'
    END AS loan_amount_range
FROM financial_loan;

-- Step 2: Create a CTE to calculate loan performance metrics
WITH loan_performance AS (
    SELECT
        loan_amount_range,
        loan_status,
        COUNT(*) OVER (PARTITION BY loan_amount_range) AS total_loans,
        SUM(CASE WHEN loan_status = 'Fully Paid' THEN 1 ELSE 0 END) OVER (PARTITION BY loan_amount_range) AS fully_paid_count,
        SUM(CASE WHEN loan_status = 'Charged Off' THEN 1 ELSE 0 END) OVER (PARTITION BY loan_amount_range) AS charged_off_count
    FROM loan_amount_categories
)
-- Step 3: Calculate averages using window functions and running averages using sliding window functions
SELECT
    loan_amount_range,
    total_loans,
    fully_paid_count,
    charged_off_count,
    ROUND((fully_paid_count * 1.0 / total_loans) * 100, 2) AS fully_paid_rate,
    ROUND((charged_off_count * 1.0 / total_loans) * 100, 2) AS charged_off_rate,
    ROUND(AVG((fully_paid_count * 1.0 / total_loans) * 100) OVER (PARTITION BY loan_amount_range ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW), 2) AS running_avg_fully_paid_rate,
    ROUND(AVG((charged_off_count * 1.0 / total_loans) * 100) OVER (PARTITION BY loan_amount_range ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW), 2) AS running_avg_charged_off_rate
FROM loan_performance
GROUP BY
    loan_amount_range,
    total_loans,
    fully_paid_count,
    charged_off_count
ORDER BY
    loan_amount_range;


-- 8. Insight: Loan Performance by Employment Length
-- Step 1: Create a temporary table to categorize employment lengths
CREATE TEMP TABLE employment_length_categories AS
SELECT
    *,
    CASE
        WHEN emp_length = '< 1 year' THEN 'Less than 1 year'
        WHEN emp_length = '1 year' AND emp_length = '2 years' THEN '1-2 years'
        WHEN emp_length IN ('3 years', '4 years', '5 years') THEN '3-5 years'
        WHEN emp_length IN ('6 years', '7 years', '8 years', '9 years', '10 years') THEN '6-10 years'
        ELSE 'More than 10 years'
    END AS emp_length_range
FROM financial_loan;

-- Step 2: Create a CTE to calculate loan performance metrics
WITH loan_performance AS (
    SELECT
        emp_length_range,
        loan_status,
        COUNT(*) OVER (PARTITION BY emp_length_range) AS total_loans,
        SUM(CASE WHEN loan_status = 'Fully Paid' THEN 1 ELSE 0 END) OVER (PARTITION BY emp_length_range) AS fully_paid_count,
        SUM(CASE WHEN loan_status = 'Charged Off' THEN 1 ELSE 0 END) OVER (PARTITION BY emp_length_range) AS charged_off_count
    FROM employment_length_categories
)
-- Step 3: Calculate averages using window functions and running averages using sliding window functions
SELECT
    emp_length_range,
    total_loans,
    fully_paid_count,
    charged_off_count,
    ROUND((fully_paid_count * 1.0 / total_loans) * 100, 2) AS fully_paid_rate,
    ROUND((charged_off_count * 1.0 / total_loans) * 100, 2) AS charged_off_rate,
    ROUND(AVG((fully_paid_count * 1.0 / total_loans) * 100) OVER (PARTITION BY emp_length_range ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING), 2) AS running_avg_fully_paid_rate,
    ROUND(AVG((charged_off_count * 1.0 / total_loans) * 100) OVER (PARTITION BY emp_length_range ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING), 2) AS running_avg_charged_off_rate
FROM loan_performance
GROUP BY
    emp_length_range,
    total_loans,
    fully_paid_count,
    charged_off_count
ORDER BY
    emp_length_range;
