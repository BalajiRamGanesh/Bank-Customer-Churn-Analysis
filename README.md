# Bank Customer Churn Analysis

<img src="https://github.com/BalajiRamGanesh/Bank-Customer-Churn-Analysis/blob/main/Bank%20Churn%20Dashboard.png?raw=true" alt = "Dashboard" width = "800" height="400">
![Dashboard]()


## Table of Contents 

- [Overview](#overview)
- [Problem Statement](#problem-statement)
- [Dataset Description](#dataset-description)
- [Tools Used](#tools-used)
- [Process](#process)
- [Insights](#insights)
- [Recommendations](#recommendations)

## Overview

This project explores customer churn in a bank to identify key factors influencing account closures. By analyzing customer demographics, account activity, credit card ownership, and financial behavior, the analysis uncovers patterns that contribute to churn.

## Problem Statement

The bank seeks to understand customer churn by analyzing key factors influencing account closures. Understanding the reasons behind churn is essential for improving retention strategies. This project aims to address key business questions:

- What is the overall churn rate of the bank?  
- What percentage of customers are active members?
- What percentage of customers own a credit card?   
- What is the average customer satisfaction rating
- What percentage of complaints are filed by customers?  
- How do different demographic factors influence customer churn rates? 

## Dataset Description

This project uses a customer churn dataset sourced from [Kaggle](https://www.kaggle.com/datasets/radheshyamkollipara/bank-customer-churn). The raw dataset is also available in this repository.
The dataset contains 10,000 rows and 17 columns, and includes information on various customer attributes that are relevant for churn analysis.

|Column | Description |
|-------|-------------|
| CustomerId |  Unique identifier for each customer.|
| Surname | Customer's last name.|
| CreditScore | A numerical value representing the customer's financial reliability.|
| Geography | Customer’s location. |
| Gender | Indicates the customer's gender. |
| Age | Customer’s age. |
| Tenure | Number of years the customer has been with the bank. |
| Balance | Account balance of the customer. |
| NumOfProducts | Number of banking products the customer has purchased. |
| HasCrCard | Indicates whether the customer owns a credit card. |
| IsActiveMember | Whether the customer is actively engaged with the bank. |
| EstimatedSalary | Estimated annual income of the customer. |
| Exited | Indicates whether the customer has left the bank. |
| Complain |  Whether the customer has filed a complaint. |
| Satisfaction Score | Rating provided by the customer regarding complaint resolution. |
| Card Type | The type of card the customer holds. |
| Points Earned | Reward points accumulated through credit card usage. |

## Tools Used


 - <img src = "https://img.utdstc.com/icon/f6f/11c/f6f11c75fda63dd454fa5db9610a77cfd6752be4db11010f2e4252551a4abccd:200" width = "45" /> **Mysql Workbench**-   Data transformation and analysis.

 - <img src = "https://mailmeteor.com/logos/assets/PNG/Microsoft_Office_Excel_Logo_512px.png" width = "45" /> **MS Excel** - Data visualization using pivot Tables and charts.

## Process  
 
1. **Data Import** – The CSV file was imported into MySQL for initial processing.  
2. **Data Transformation** – Adjustments were made to convert binary values into more meaningful categorical values.  
3. **Data Export** – The processed data was exported from MySQL and imported into Excel, where The file format was changed from CSV to Excel (.xlsx).  
4. **Pivot Table & Charts** – Pivot tables were created to summarize the data, followed by the generation of relevant charts for visualization.  
5. **Dashboard Creation** – A dashboard was built in Excel using the charts derived from the pivot tables.  
6. **Data Verification** -  Verified Excel graphs by cross checking key metrics and insights with SQL queries

## Insights
- The bank has 20% churn rate, indicating one out of five customers is leaving.
- Nearly half of the customers are inactive with over 96.7% purchasing only one or two products.  
- Germany has the highest churn rate at 32.5%, nearly double that of France at 16.2%  and significantly higher than Spain at 13.7%. 
- The churn rate among female customers is 25.1%, higher than male customers at 16.5%. Females make up 45.4% of the total customer base
- The overall customer satisfaction rating is 2.8 with ratings nearly evenly distributed among customers.  
- Most of the customers are middle aged.  

## Recommendations

- **Encourage active engagement** by offering better reward programs, cashback, and personalized deals to increase the number of active customers.  
- **Improve retention strategies for female customers** by investigating the reasons for their higher churn rate and offering targeted loyalty programs.  
- **Focus retention efforts in Germany** by understanding the reasons behind customer churn and improving engagement strategies for that region  
- **Prioritize customer service improvements** by gathering feedback and analyzing the reasons for complaints to boost the overall satisfaction rating.
- **Attract younger and older customers** by introducing digital banking solutions, student friendly offers, and retirement plans.  




