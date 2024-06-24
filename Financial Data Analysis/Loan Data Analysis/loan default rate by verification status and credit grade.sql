-- 1. Insight: Loan Default Rates by Verification Status and Credit Grade
-- STEP 1
SELECT * FROM financial_loan;
-- CHECK IF THERE ARE NULL ENTRIES IN THE KPIs
SELECT * FROM financial_loan WHERE grade IS NOT NULL AND verification_status IS NOT NULL AND loan_status IS NOT NULL;

-- ANALYSIS
SELECT
	grade,
	verification_status,
	COUNT(*) AS total_loans,
	SUM(CASE WHEN loan_status = 'Charged Off' THEN 1 ELSE 0 END) AS default_loan_count,
	ROUND(SUM(CASE WHEN loan_status = 'Charged Off' THEN 1 ELSE 0 END) * 1.0/COUNT(*) * 100, 2) AS default_rate
FROM
	financial_loan
GROUP BY
	grade, verification_status
ORDER BY
	grade, verification_status;