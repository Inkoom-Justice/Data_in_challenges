<div style="text-align: justify">
  
  # British Airways Data Analysis
  This project has two phases.
  ## 1. Here is the background information of the first phase of the project
  British Airways (BA) is the flag carrier airline of the United Kingdom (UK). Every day, thousands of BA flights arrive to
  and depart from the UK, carrying customers across the world. Whether it’s for holidays, work or any other reason, the end-to-end
  process of scheduling, planning, boarding, fuelling, transporting, landing, and continuously running flights on time, efficiently
  and with top-class customer service is a huge task with many highly important responsibilities.

  As a data scientist at BA, it will be your job to apply your analytical skills to influence real life multi-million-pound decisions
  from day one, making a tangible impact on the business as your recommendations, tools and models drive key business decisions, reduce
  costs and increase revenue.

  Customers who book a flight with BA will experience many interaction points with the BA brand. Understanding a customer's feelings,
  needs, and feedback is crucial for any business, including BA.

  ### Things I did:
  ##### a. Scrape data from the web
  With the help of a websit called Skytrax, the first thing I did was to scrape the review data from a given website.
  
  My team leader wanted me to focus on reviews specifically about the airline itself. So I collected as much data
  as I can in order to improve the output of my analysis. To get started with the data collection, I used
   “Jupyter Notebook” to run some Python code that helped to collect some data. 

  ##### b. Analyse data
  The data I got from the scrapping was very messy and contained purely text. I perform data cleaning in order to 
  prepare the data for analysis. When the data was cleaned, I perform my own 
  analysis and uncovered some insights. As a starting point, I looked at topic modelling, sentiment analysis and wordclouds
  to provide some insight into the content of the reviews.

  ##### c. Present insights
  My manager wanted a summarise of my findings within a single PowerPoint slide, so that he can present the results
  at the next board meeting. I created visualisations and metrics to include within this slide, as well as clear and 
  concise explanations in order to quickly provide the key points from my analysis. 
  
  ## 2. Here is the background information on the second phase
  Customers are more empowered than ever because they have access to a wealth of information at their fingertips. This is one of 
  the reasons the buying cycle is very different to what it used to be. Today, if you’re hoping that a customer purchases your 
  flights or holidays as they come into the airport, you’ve already lost! Being reactive in this situation is not ideal; airlines 
  must be proactive in order to acquire customers before they embark on their holiday.

  This is possible with the use of data and predictive models. The most important factor with a predictive model is the quality of
  the data you use to train the machine learning algorithms. For this task, you must manipulate and prepare the provided customer 
  booking data so that you can build a high-quality predictive model.

  With your predictive model, it is important to interpret the results in order to understand how “predictive” the data really was
  and whether we can feasibly use it to predict the target outcome (customers buying holidays). Therefore, you should evaluate the
  model's performance and output how each variable contributes to the predictive model's power.

  ### Things I did:
  ##### a. Explore and prepare the dataset
  First, I spent some time exploring the dataset in Jupyter Notebook and understood the different columns and some basic statistics
  of the dataset. Then, I considered how to prepare the dataset for a predictive model. I thought about new 
  features I could create in order to make my model even better. 

  ##### b. Train a machine learning model
  When the data was ready for modelling, I trained a machine learning model to be able to predict the target outcome, which is
  a customer making a booking. For this task, I used an algorithm that easily allowed me to output information about how each 
  variable within the model contributes to its predictive power. For example, a RandomForest is very good for this purpose so I did use it.

  ##### c. Evaluate model and present findings
  After training the model, I evaluated how well it performed by conducting cross-validation and outputted appropriate 
  evaluation metrics. Furthermore, I created a visualisation to interpret how each variable contributed to the model. Finally,
  I summarised my findings in a single slide and sent to my manager. 

  Python was mainly used in this analysis.
</div>
