# Scenario
You are a financial data analyst on Wall Street and you have been tasked with summarizing data about investor funds.
Your manager would like the following questions answered.

Read in the data
url = 'https://raw.githubusercontent.com/datasets/investor-flow-of-funds-us/master/data/weekly.csv' 
df = pd.read_csv(url) 

Questions
What is the frequency of the dataset? (The time period between each row)
What is the data type of the index?
Set the index to a Datetime.
Change the frequency to monthly, sum the values and assign it to new variable called monthly.
You will notice that it filled the dataFrame with months that don’t have any data with NaN. Let’s drop these rows.
Good, now we have the monthly data. Now change the frequency to year and assign to a new variable called year.
Create your own question and answer it.
