# Retail Analysis Project

## Project Description

This project aims to analyze retail sales data to derive insights that can help improve sales performance for a retail outlet. The analysis focuses on understanding the factors influencing sales and predicting outlet sales using various statistical techniques. The project is carried out using R Studio, utilizing several libraries for data manipulation, visualization, and predictive modeling.

## Key Libraries Used

- **tidyverse**: A collection of R packages for data science, which includes tools for data manipulation and visualization.
- **dplyr**: A grammar of data manipulation, providing a consistent set of verbs to help solve common data manipulation challenges.
- **tree**: A package used for constructing and analyzing decision trees.

## Dataset Snapshot

- **Training Set**: ~ 8,620 rows
- **Test Set**: ~ 5,682 rows

## Analysis Steps

1. **Data Preparation**:
   - Tidied the dataset by handling missing values and reducing redundant categories using the `forcats` package in R.
   - Created dummy variables for categorical data to facilitate classification and regression methods.

2. **Preliminary Analysis**:
   - Generated scatter plots and correlation coefficient tables to identify basic trends.
   - Conducted k-means clustering and Principal Component Analysis (PCA) to observe product clusters.

3. **Key Findings**:
   - **Outlet Performance**: Type 1 supermarkets significantly outperform other outlet types.
   - **Fat Content Sales**: Low-fat foods sold at nearly twice the volume compared to regular-fat foods.
   - **Product Categories**: Retail sales are dominated by frozen and snack foods, with noticeable dips in breakfast and seafood categories.

4. **Predictive Modeling**:
   - Used Linear Multivariate Regression to model outlet sales, optimizing the model to achieve a lower Root Mean Squared Error (RMSE).
   - Employed k-Nearest Neighbors (kNN) and Regression Trees for predicting sales of new product categories, optimizing parameters to minimize RMSE.

5. **Conclusion**:
   - Insights suggest stocking inventory with medium-to-high MRP products and focusing on scaling grocery and hypermarkets to maximize sales.
   - Recommendations include updating inventory to track additional nutritional dimensions for more accurate clustering and prediction results.
