# Chipotle Sales
## Scenario
You are a financial data analyst at Chipotle and your manager has tasked you with analyzing the most recent sales numbers.
She has provided the following set of questions she would like answered.

### Get the Data
url = 'https://raw.githubusercontent.com/justmarkham/DAT8/master/data/chipotle.tsv'

chipo = pd.read_csv(url, sep = '\t')


### Challenge Questions:
1. Which was the most-ordered item?
2. For the most-ordered item, how many items were ordered?
3. What was the most ordered item in the choice_description column?
4. How many items were ordered in total?
5. Turn the item price into a float
6. How much was the revenue for the period in the dataset?
7. How many orders were made in the period?
8. What is the average revenue amount per order?
9. How many different items are sold?
