# Investor Funds Data Analysis

## Introduction
This repository contains code to analyze investor funds data obtained from a CSV file hosted on GitHub.

## Scenario
As a financial data analyst on Wall Street, the task is to summarize data about investor funds. The manager has provided specific questions to be answered using the dataset.

## Questions

1. **Frequency of the Dataset:**
   - The time period between each row in the dataset.

2. **Data Type of the Index:**
   - The current data type of the index.

3. **Setting Index to Datetime:**
   - Convert the index to Datetime data type.

4. **Changing Frequency to Monthly:**
   - Summing the values on a monthly basis and assigning it to a new variable called `monthly`.

5. **Dropping Rows with NaN Values:**
   - Remove rows where there is no data for a given month.

6. **Changing Frequency to Yearly:**
   - Change the frequency to yearly and assign it to a new variable called `year`.

7. **Custom Question:**


## Usage

```python
import pandas as pd

# Read in the data
url = 'https://raw.githubusercontent.com/datasets/investor-flow-of-funds-us/master/data/weekly.csv'
df = pd.read_csv(url)

# What is the frequency of the dataset?
# Print(df.head()) # Uncomment to check the first few rows and determine the frequency

# What is the data type of the index?
# print(df.index.dtype) # Uncomment to check the data type of the index

# Set the index to Datetime
# df.index = pd.to_datetime(df.index) # Uncomment to convert index to Datetime

# Change the frequency to monthly, sum the values and assign it to new variable called monthly
# monthly = df.resample('M').sum() # Uncomment to resample the data on a monthly basis and sum the values

# Drop rows with NaN values
# monthly = monthly.dropna() # Uncomment to drop rows with NaN values

# Change the frequency to year and assign to a new variable called year
# year = monthly.resample('Y').sum() # Uncomment to resample the data on a yearly basis and sum the values

# Create your own question and answer it
# Custom question and answer code here
