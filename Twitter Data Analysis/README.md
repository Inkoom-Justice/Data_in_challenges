# Twitter-Archive-Dataset
### by Justice Inkoom

## Dataset:- twitter_archive_master data
The task was to create a master dataframe that was clean so we can analyze and visualize some of its contents.
I achieved this by first gathering the data from three diffent sources as instructed by the project page.

Loading the dataset twitter-archive-enhanced.csv that was provided. Getting the dataset image_predictions.tsv that was hosted in the Udacity's servers by programmatically downloading it using the Requests library and the URL: https://d17h27t6h515a5.cloudfront.net/topher/2017/August/599fd2ad_image-predictions/image-predictions.tsv I had a problem importing tweepy library so I ended up using the json text file alternative that was provided on one of the project pages. I then assessed the data both visually and programmatically checking for any anormalities in the datasets, that is, any quality issues and tidiness issued that could not be used in the exploratory data analysis and the visualizations.

## Quality Issues
Regarding the Quality issues;

1. some columns contained a lot of missing data in twitter-archive-enhanced.csv.

2. some columns in twitter-archive-enhanced.csv were irrelevant to my analysis.

3. Change tweet_id from an integer to a string (twitter-archive-enhanced.csv).

4. Timestamp column is not of datetime format (twitter-archive-enhanced.csv).

5. Wrong Datatype img_num Column should be in string (image-prediction.tsv).

6. Change numerator and denominator datatype to float in twitter dataset (twitter-archive-enhanced.csv).

7. Correct column containing invalid names (twitter-archive-enhanced.csv).

8. Create a column called rating to standardize the ratings (twitter-archive-enhanced.csv).

## Tidiness Issues
Regarding the Tidiness issues;

1. Merge the dog columns into one.

2. Merge the three datasets into a big data (master data). I then used code to clean the three datasets and combined them with the twitter-archive-enhanced dataset serving as the primary dataset, and saved the dataset as a csv file. Later, I examined the newly acquired data using this dataset and created several visualizations using it. 

## Insight obtained from the data
1. Most of the dogs were puppers.

2. Most of the tweets were sent from an iPhone.

3. Most of the dog breeds were predicted using the first image or image 1.

4. The highest rating of 2.7 was received by a pupper dog type.

5. There is a positive correlation between favorite_count and retweet_count which means as a dog post is retweeted more, its favorite counts also increase.
