# Tata Data Visualisation Empowering Business with Effective Insights
### Data Cleaning Process
Before you can begin the analysis, make sure that the data is cleaned properly. You have noticed that the data contains some returns to the store which are provided in negative quantities and there are unit prices which were input in error. You will need to perform the following steps to clean this data.

#### 1. Create a check that the quantity should not be below 1 unit

#### 2. Create a check that the Unit price should not be below $0

Please note that in order to apply the checks that have been mentioned above, you would need to use conditional formulas where the logic would state that if the conditions are met then the tool should exclude the data from analysis. You can also use data transformation methods to get rid of the bad data. Both these methods are provided in the resources section. Once this is done, the data will be good to be used for further analysis. Please note that this data should be cleaned up before attempting any question.

### STEPS FOR DATA CLEANING

In Power Query Editor, click on the table containing the data.

Select the "Add Column" tab.

#### 1. Create a check that the quantity should not be below 1 unit:

a. Click on "Custom Column" in the Add Column tab.

b. In the formula bar, enter the following formula: if [Quantity] >= 1 then "Valid" else "Invalid".

c. Rename the new column as "Quantity Check".

d. Click OK to create the column.

#### 2. Create a check that the Unit price should not be below $0:

a. Follow the same steps as above, but use the following formula in the Custom Column dialog: if [UnitPrice] >= 0 then "Valid" else "Invalid".

b. Rename the new column as "Unit Price Check".

c. Click OK to create the column.

#### ~ Remove the rows with invalid data:

a. Click on the "Filter" icon next to the "Quantity Check" column header.

b. Uncheck the "Invalid" option to exclude rows with invalid quantities.

c. Click OK to apply the filter.

d. Repeat the same steps for the "Unit Price Check" column to remove rows with invalid unit prices.

  
### TASKS

#### Question 1

The CEO of the retail store is interested to view the time series of the revenue data for the year 2011 only.
He would like to view granular data by looking into revenue for each month. 
The CEO is interested in viewing the seasonal trends and wants to dig deeper into why these trends occur. 
This analysis will be helpful for the CEO to forecast for the next year.

#### Question 2

The CMO is interested in viewing the top 10 countries which are generating the highest revenue.
Additionally, the CMO is also interested in viewing the quantity sold along with the revenue generated. 
The CMO does not want to have the United Kingdom in this visual.

#### Question 3

The CMO of the online retail store wants to view the information on the top 10 customers by revenue.
He is interested in a visual that shows the most significant revenue-generating customer at the start and gradually declines to the lower revenue-generating customers.
The CMO wants to target higher revenue-generating customers and ensure they remain satisfied with their products.

#### Question 4

The CEO is looking to gain insights into the demand for their products. 
He wants to look at all countries and see which regions have the highest product demand. 
Once the CEO gets an idea of the regions that have high demand, he will initiate an expansion strategy which will allow the company to target these areas and generate more business from these regions.
He wants to view the entire data on a single view without the need to scroll or hover over the data points to identify the demand. 
There is no need to show data for the United Kingdom as the CEO is more interested in viewing the countries that have expansion opportunities.
