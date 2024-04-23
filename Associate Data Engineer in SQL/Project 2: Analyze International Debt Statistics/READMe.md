# Analyze International Debt Statistics
It's not that we humans only take debts to manage our necessities. A country may also take debt to manage its economy.  
For example, infrastructure spending is one costly ingredient required for a country's citizens to lead comfortable lives.  
The World Bank is the organization that provides debt to countries.

In this notebook, we are going to analyze international debt data collected by The World Bank.  
The dataset contains information about the amount of debt (in USD) owed by developing countries across several categories.  
We are going to find the answers to questions like:

What is the total amount of debt that is owed by the countries listed in the dataset?
Which country owes the maximum amount of debt and what does that amount look like?
What is the average amount of debt owed by countries across different debt indicators?

### Questions that were Answered
Six SQL cells have been created for you in the workbook, please write SQL queries to answer the following:

1. What is the number of distinct countries present in the database?  
The output should be single column aliased with the following name: total_distinct_countries.  
2. What are the distinct debt indicators? The output column should be aliased as distinct_debt_indicators and  
the outputs should be ordered by it.  
3. What is the total amount of debt owed by all the countries present in the table, in millions, rounded to two decimals?  
The output should be single column aliased with the following name: total_debt.
4. What country has the highest amount of debt? Your output should contain two columns: country_name and total_debt.
5. What is the average amount of debt across different debt indicators? The output table should contain debt_indicator,  
indicator_name, and average_debt.
6. What country has the highest amount of principal repayments in the "DT.AMT.DLXF.CD" category?  
The output table should contain two columns: country_name and indicator_name.
Note: Please also ensure that you do not change the names of the DataFrames that the three query results will be saved as - 
creating new cells in the workbook will rename the DataFrame. Make sure that your final solutions use the names provided:  
num_distinct_countries, distinct_debt_indicators, total_debt, highest_debt_country, avg_debt_per_indicator, and highest_principal_repayment.

