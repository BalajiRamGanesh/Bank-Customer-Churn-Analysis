# Bank Customer Churn Analysis Project  

The Customer Churn Analysis Project focuses on understanding the reasons behind customer churn in the banking sector. By analyzing customer data, the project aims to identify trends and factors that lead to churn. It Provides insights that can help the bank retain customers.

## Table of Contents 

- [Dataset](#dataset)
- [Tools](#tools)
- [Process](#process)
- [Dashboard](#dashboard)
- [Insights](#insights)
- [Recommendations](#recommendations)


## Dataset

This project uses a customer churn dataset sourced from [Kaggle](https://www.kaggle.com/datasets/radheshyamkollipara/bank-customer-churn). The source dataset is also available in this repository.
The dataset contains 10,000 rows and 17 columns, and includes information on various customer attributes that are relevant for churn analysis. The dataset includes:

- **CustomerId** – Unique identifier for each customer.
- **Surname** – Customer's last name.
- **CreditScore** – A numerical value representing the customer's financial reliability.
- **Geography** – Customer’s location.
- **Gender** – Indicates whether the customer is male or female.
- **Age** – Customer’s age.
- **Tenure** – Number of years the customer has been with the bank.
- **Balance** – Account balance of the customer.
- **NumOfProducts** – Number of banking products the customer has purchased.
- **HasCrCard** – Indicates whether the customer owns a credit card.
- **IsActiveMember** – Whether the customer is actively engaged with the bank.
- **EstimatedSalary** – Annual income of the customer.
- **Exited** – Indicates whether the customer has left the bank.
- **Complain** – Whether the customer has filed a complaint.
- **Satisfaction Score** – Rating provided by the customer regarding complaint resolution.
- **Card Type** – The type of credit or debit card the customer holds.
- **Points Earned** – Reward points accumulated through credit card usage.




## Tools

- **SQL:** MySQL for data transformation and analysis.
- **Excel:** Data visualization using Pivot Tables and Charts.

## Process  

1. **Data Acquisition** – The dataset was downloaded from Kaggle in CSV format.  
2. **Data Import** – The CSV file was imported into MySQL for initial processing.  
3. **Data Transformation** – Adjustments were made to convert binary values into more meaningful categorical values.  
4. **Data Export** – The processed data was exported from MySQL and imported into Excel, where The file format was changed from CSV to Excel (.xlsx).  
5. **Pivot Table & Charts** – Pivot tables were created to summarize the data, followed by the generation of relevant charts for visualization.  
6. **Dashboard Creation** – A dashboard was built in Excel using the charts derived from the pivot tables.  
7. **Data Verification** -  Verified Power BI graphs by cross checking key metrics and insights with SQL queries

## Dashboard

![Dashboard Image](https://github.com/BalajiRamGanesh/Bank-Customer-Churn-Analysis/blob/main/Bank%20Churn%20Dashboard.png?raw=true)
## Insights

- Nearly half of the customers are inactive, with over 90% purchasing only 1 or 2 products.  
- Germany has the highest churn rate at 32% despite accounting for only 25% of total customers.  
- The churn rate is higher among female customers who make up 46% of the total customers.  
- The overall customer satisfaction rating is 2.8 with ratings nearly evenly distributed among customers.  
- Most of the customers are middle aged.  

## Recommendations

- **Encourage active engagement** by offering better reward programs, cashback, and personalized deals to increase the number of active customers.  
- **Improve retention strategies for female customers** by investigating the reasons for their higher churn rate and offering targeted loyalty programs.  
- **Focus retention efforts in Germany** by understanding the reasons behind customer churn and improving engagement strategies for that region  
- **Prioritize customer service improvements** by gathering feedback and analyzing the reasons for complaints to boost the overall satisfaction rating, which currently sits at 2.8
- **Attract younger and older customers** by introducing digital banking solutions, student friendly offers, and retirement plans.  
