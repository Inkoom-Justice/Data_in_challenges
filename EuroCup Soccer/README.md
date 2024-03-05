# Scenario
You are a sports data analyst and you have been tasked with summarizing data from the matches from a previous EuroCup.
Your manager would like the following questions answered.

Read in the data
data = pd.read_csv('https://raw.githubusercontent.com/guipsamora/pandas_exercises/master/02_Filtering_%26_Sorting/Euro12/Euro_2012_stats_TEAM.csv', sep=',')

Questions
1. How many teams participated in the Euro2012?
2. What is the number of columns in the dataset?
3. View only the columns Team, Yellow Cards and Red Cards and assign them to a dataframe called discipline.
4. Sort the teams by Red Cards, then to Yellow Cards.
5. Calculate the mean Yellow Cards given per Team.
6. Filter teams that scored more than 6 goals.
7. Select the teams that start with the letter G.
8. Select the first 7 columns.
9. Select all columns except the last 3.
10. Present only the Shooting Accuracy from England, Italy and Russia.
