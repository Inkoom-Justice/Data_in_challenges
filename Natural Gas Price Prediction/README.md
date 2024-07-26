### Natural Gas Price Prediction using Machine Learning

**Project Overview:**
- Developed a comprehensive machine learning model to predict natural gas prices.
- Utilized various algorithms including Random Forest, XGBoost, and Prophet.
- Final model selection based on performance metrics; Random Forest was the best performing model.

**Data Generation:**
- Created a synthetic dataset of natural gas prices and consumption with daily records spanning 10 years (2010-2019).
- Included features:
  - **Price**: Daily price of natural gas in dollars per MMBtu.
  - **Consumption**: Daily consumption of natural gas in Bcf/day.

**Data Preprocessing:**
- Created lag features to capture temporal dependencies.
- Split data into training (2010-2018) and testing (2019) sets for model evaluation.

**Model Building and Evaluation:**
1. **SARIMA Model**: Used initially to capture seasonal patterns.
2. **Random Forest Regressor**:
   - Trained and evaluated with promising results:
     - **MAE**: 0.4246
     - **RMSE**: 0.5288
3. **XGBoost Regressor**:
   - Performance metrics:
     - **MAE**: 0.4468
     - **RMSE**: 0.5605
4. **Prophet**: Employed for capturing trends and seasonality.
5. **Model Optimization**: Random Forest was further optimized using Grid Search, achieving improved performance.

**Model Comparison:**
- Random Forest outperformed other models in terms of Mean Absolute Error (MAE) and Root Mean Squared Error (RMSE).

**Conclusion:**
- Demonstrated the application of machine learning techniques for time series forecasting in the energy sector.
- Developed a robust prediction system for natural gas prices, showcasing abilities in handling time series data, applying machine learning algorithms, and optimizing models.

**Technologies Used:**
- **Programming Languages**: Python
- **Libraries**: Pandas, NumPy, Scikit-learn, XGBoost, Prophet, Statsmodels
- **Tools**: Jupyter Notebook

**Future Work:**
- Integrating real-world datasets for more accurate modeling.
- Exploring additional features that may impact natural gas prices.
- Implementing advanced deep learning models such as LSTM and GRU for potentially better performance.
