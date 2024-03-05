# Scenario
You are a data analyst at a social research company.
You manager has a simple adhoc request to uncover some stats about alcohol consumption across the world.

Read in the data
drinks = pd.read_csv('https://raw.githubusercontent.com/justmarkham/DAT8/master/data/drinks.csv')

Questions
Which continent drinks more beer on average?
For each continent print the statistics for wine consumption.
Print the mean alcohol consumption per continent for every column.
Print the median alcohol consumption per continent for every column.


# Alcohol Consumption Analysis PROCEDURE

This project aims to analyze alcohol consumption across the world using a dataset obtained from a social research company. The analysis includes calculating statistics and identifying patterns related to beer, spirit, and wine consumption on different continents.

## Dataset
The dataset used for this analysis is sourced from the DAT8 repository and consists of the following columns:
- country: Name of the country
- beer_servings: Number of beer servings per capita
- spirit_servings: Number of spirit servings per capita
- wine_servings: Number of wine servings per capita
- total_litres_of_pure_alcohol: Total liters of pure alcohol consumed per capita
- continent: Continent code (AS: Asia, EU: Europe, AF: Africa, SA: South America, OC: Oceania)

## Process
### Data Preprocessing:
The dataset was loaded into a Pandas DataFrame and inspected using the info() method to check for any missing values or data types.

### Analysis:
Two main analysis tasks were performed:
a) Which continent drinks more beer on average?
b) Statistics for wine consumption by continent

## Results
- Continent with more beer on average: Europe (EU)
- Wine consumption statistics by continent:
  - Africa (AF): Mean = 16.26, Standard Deviation = 38.85, Minimum = 0, Maximum = 233
  - Asia (AS): Mean = 9.07, Standard Deviation = 21.67, Minimum = 0, Maximum = 123
  - Europe (EU): Mean = 142.22, Standard Deviation = 97.42, Minimum = 0, Maximum = 370
  - North America (NA): Mean = 24.52, Standard Deviation = 31.41, Minimum = 1, Maximum = 100
  - Oceania (OC): Mean = 35.63, Standard Deviation = 64.56, Minimum = 0, Maximum = 212
  - South America (SA): Mean = 62.42, Standard Deviation = 88.62, Minimum = 1, Maximum = 221

These results provide insights into alcohol consumption patterns across continents, highlighting the variations in beer and wine consumption. The analysis can be further expanded to explore additional relationships and trends in alcohol consumption worldwide.

Please note that the analysis is based on the available dataset and the results may not represent the most current figures.

## Dependencies
The analysis was performed using the following libraries/packages:
- NumPy
- Pandas
- Matplotlib
- Seaborn
Make sure to install these dependencies before running the code.

## Usage
To replicate the analysis, follow these steps:
1. Clone the repository or download the Jupyter Notebook file (Challenge_3_Alcohol_Consumption.ipynb).
2. Install the required dependencies using the package manager of your choice (e.g., pip).
3. Run the Jupyter Notebook file to execute the analysis and view the results.
Feel free to modify the code or dataset to suit your specific requirements or conduct further analysis.

## Author
Justice Inkoom
