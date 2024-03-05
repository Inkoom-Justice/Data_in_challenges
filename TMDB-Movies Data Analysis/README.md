# Investigate-a-Dataset
### by Justice Inkoom

## Dataset:- tmdb-movies data

This data set contains information about 10,000 movies collected from The Movie Database (TMDb), including user ratings and revenue.

Certain columns, like ‘cast’ and ‘genres’, contain multiple values separated by pipe (|) characters.
There are some odd characters in the ‘cast’ column. Don’t worry about cleaning them. You can leave them as is.
The final two columns ending with “_adj” show the budget and revenue of the associated movie in terms of 2010 dollars, accounting for inflation over time.

## Questions for the Analysis
1. Which genre of movie has the highest budget and revenue?
2. Which genre of movie has the highest runtime?

## Data Wrangling
This is where I import the data and make some observations to determine which data columns are in good shape for the analysis I intend to do. I had to clean the data because there were a lot of missing values in this data. It was clear that some data colums should be dropped because there were a lot of missing values within those columns and also some were not relevant to my research so I dropped the following columns:

homepage
tagline
keywords
production_companies
budget_adj
revenue_adj
The columns that are relevant to my research also had zeros so I replaced the zeros in them (budget, revenue and runtime) with their respective means. Afterwards, the data still had a significant amount of rows that could speak for the entire database. So I proceeded with the exploration of the dataset.

## Insight obtained from the exploration of the data
1. Drama had the highest budget as well as revenue, followed by Comedy and Action.
2. Budget and revenue have a form of relationship.
3. There exist a positve correlation between budget and revenue.
4. History has the highest runtime followed by War genre.

## Limitation
Although we successfully obtained the above information on TMDb movie dataset, there are some infomation removed such as rows contained null values. Rows containing zeros were filled with the mean of the respected columns and I believe this will have some effect on the actual results.
