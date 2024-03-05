# Roller Coasters Data Analysis

## Introduction
This repository contains code to analyze roller coaster data obtained from a CSV file.

## Scenario
As a data analyst, the task is to uncover insights about roller coasters. The data is messy and requires cleaning. The manager has provided specific questions to be answered using the dataset.

## Get the Data

[Download dataset here](https://raw.githubusercontent.com/kedeisha1/Challenges/main/coaster_db.csv)

## Questions

1. **Number of Columns and Rows:**
   - How many columns and rows are in the dataset?

2. **Missing Data:**
   - Is there any missing data in the dataset?

3. **Summary Statistics:**
   - Display the summary statistics of the numeric columns using the describe method.

4. **Column Renaming:**
   - Rename specific columns as follows:
     - coaster_name ➡️  Coaster_Name
     - year_introduced ➡️ Year_Introduced
     - opening_date_clean ➡️ Opening_Date
     - speed_mph ➡️ Speed_mph
     - height_ft ➡️ Height_ft
     - Inversions_clean ➡️ Inversions
     - Gforce_clean ➡️ Gforce

5. **Duplicated Rows:**
   - Are there any duplicated rows in the dataset?

6. **Top 3 Years with Most Roller Coasters:**
   - What are the top 3 years with the most roller coasters introduced?

7. **Average Speed:**
   - What is the average speed of roller coasters? Also, display a plot to show its distribution.

8. **Feature Relationships:**
   - Explore the relationships between features. Are there any positively or negatively correlated relationships?

9. **Custom Question:**

## Usage

```python
import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns

# Read in the data
url = 'https://raw.githubusercontent.com/kedeisha1/Challenges/main/coaster_db.csv'
df = pd.read_csv(url)

# How many columns and rows are in the dataset?
# print(df.shape) # Uncomment to print the number of rows and columns

# Is there any missing data?
# print(df.isnull().sum()) # Uncomment to check for missing data

# Display summary statistics of numeric columns
# print(df.describe()) # Uncomment to display summary statistics

# Rename specific columns
# df = df.rename(columns={'coaster_name': 'Coaster_Name', 'year_introduced': 'Year_Introduced', ...})

# Are there any duplicated rows?
# print(df.duplicated().sum()) # Uncomment to check for duplicated rows

# What are the top 3 years with the most roller coasters introduced?
# print(df['Year_Introduced'].value_counts().nlargest(3)) # Uncomment to find top 3 years

# What is the average speed? Display a plot to show its distribution.
# average_speed = df['Speed_mph'].mean()
# sns.histplot(df['Speed_mph'], kde=True)
# plt.xlabel('Speed (mph)')
# plt.ylabel('Frequency')
# plt.title(f'Distribution of Roller Coaster Speed\nAverage Speed: {average_speed:.2f} mph')
# plt.show()

# Explore feature relationships
# correlation_matrix = df.corr()
# sns.heatmap(correlation_matrix, annot=True)
# plt.title('Correlation Matrix')
# plt.show()

# Custom question and answer code here
