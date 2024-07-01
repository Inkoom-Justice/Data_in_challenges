# Financial Analysis on Loan Dataset

## Overview
This project is a comprehensive financial analysis on a loan dataset, covering various insights and metrics to understand the performance and risk associated with the loan portfolio. The analysis is performed using SQL queries and explores different aspects of loan data, including default rates, debt-to-income ratios, loan performance over time, and borrower repayment behavior.

## Key Insights
- **Loan Default Rates by Verification Status and Credit Grade**: This insight examines the relationship between loan default rates, verification status, and credit grade, providing valuable information for risk assessment and underwriting decisions.
- **Impact of Debt-to-Income Ratio on Loan Performance**: This insight explores the impact of the debt-to-income ratio on loan performance, including default rates, average interest rates, and average loan amounts.
- **Loan Performance Over Time by State and Credit Grade**: This insight tracks loan performance, measured by default rates, over time, across different states and credit grades. This can help identify geographic and credit-related trends in the loan portfolio.
- **Cohort Analysis of Borrower Repayment Behavior**: This insight provides a cohort analysis of borrower repayment behavior, analyzing the fully paid and charged-off rates over time for different cohorts of loan origination.
- **Loan Performance by Employment Length and Annual Income**: This insight examines the relationship between loan performance, employment length, and annual income, helping to identify the optimal borrower profiles for low-risk lending.
- **Loan Performance by Debt-to-Income (DTI) Ratio**: This insight delves deeper into the impact of the debt-to-income ratio on loan performance, providing a detailed analysis of default and fully-paid rates across different DTI ranges.

## Technical Details
The analysis is performed using SQL and the following key steps:
- **Loan Default Rates by Verification Status and Credit Grade**: Calculates total loans, charged-off count, and default rate for each combination of verification status and credit grade.
- **Impact of Debt-to-Income Ratio on Loan Performance**: Calculates total loans, charged-off count, default rate, average interest rate, and average loan amount for each debt-to-income ratio.
- **Loan Performance Over Time by State and Credit Grade**: Uses a CTE to calculate total loans, charged-off count, and default rate for each combination of address state, credit grade, and month of loan issue.
- **Cohort Analysis of Borrower Repayment Behavior**: Uses a CTE to calculate total loans, fully paid count, charged-off count, fully paid rate, and charged-off rate for each cohort (month of loan issue) and month since issue.
- **Loan Performance by Employment Length and Annual Income**: Uses a temporary table and a CTE to calculate total loans, fully paid count, charged-off count, fully paid rate, charged-off rate, and running averages across different income ranges and employment lengths.
- **Loan Performance by Debt-to-Income (DTI) Ratio**: Focuses on the impact of debt-to-income ratio on loan performance.

The SQL code is well-organized, with comments explaining the purpose of each section. The query results provide a comprehensive understanding of the loan portfolio's performance and risk characteristics.

## Usage
To use this project, you will need access to a database containing the `financial_loan` table, which is the source of the loan data used in the analysis. The SQL queries can be executed in a SQL editor or integrated into a larger data analysis workflow.

## Future Improvements
- **Visualization**: Incorporating data visualization techniques, such as creating charts and graphs, could enhance the presentation and communication of the insights.
- **Model Integration**: Integrating the insights into a predictive loan default model could improve risk management and underwriting decisions.
- **Sensitivity Analysis**: Performing sensitivity analyses on key variables could provide deeper insights into the drivers of loan performance.
- **Segmentation and Clustering**: Applying data mining techniques could help identify meaningful borrower archetypes and their associated risk profiles.

## Conclusion
This financial analysis on a loan dataset provides a comprehensive understanding of the loan portfolio's performance and risk characteristics. The insights gained can inform risk management, underwriting, and portfolio optimization decisions, ultimately leading to improved financial outcomes for the lending institution.

