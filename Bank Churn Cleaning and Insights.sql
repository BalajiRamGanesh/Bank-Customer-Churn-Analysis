-- Data cleaning

SELECT DISTINCT IsActiveMember
FROM bank_customer_churn;

ALTER TABLE bank_customer_churn
MODIFY HasCrCard VARCHAR(3);

UPDATE bank_customer_churn
SET HasCrCard =  (
	CASE 
		WHEN HasCrCard = 1 THEN 'Yes'
		ELSE 'No'
    END);
    
SELECT DISTINCT IsActiveMember
FROM bank_customer_churn;

ALTER TABLE bank_customer_churn
MODIFY IsActiveMember VARCHAR(10);

UPDATE bank_customer_churn
SET IsActiveMember = (
	CASE 
		WHEN IsActiveMember = 1 THEN 'Active'
		WHEN IsActiveMember = 0 THEN 'Inactive'
	END);

SELECT DISTINCT Exited
FROM bank_customer_churn;

ALTER TABLE bank_customer_churn
MODIFY Exited VARCHAR(3);

UPDATE bank_customer_churn
SET Exited = (
	CASE
		WHEN Exited = 1 THEN 'Yes'
		WHEN Exited = 0 THEN 'No'
    END);

SELECT DISTINCT Complain
FROM bank_customer_churn;

ALTER TABLE bank_customer_churn
MODIFY Complain VARCHAR(3);

UPDATE bank_customer_churn
SET Complain = (
	CASE
		WHEN Complain = 1 THEN 'Yes'
		WHEN Complain = 0 THEN 'No'
    END); 

SELECT * FROM bank_customer_churn; -- Export data to power bi

-- Data Analysis

		-- Churn rate and Retention rate
SELECT
	(SUM(CASE WHEN Exited = 'Yes' THEN 1 ELSE 0 END)/COUNT(*))*100  AS Churn_rate,
	(SUM(CASE WHEN Exited = 'No' THEN 1 ELSE 0 END)/COUNT(*)*100) AS retention_rate
FROM bank_customer_churn;

		-- Credit card status percentage
SELECT
	(SUM(CASE WHEN HasCrCard = 'Yes' THEN 1 ELSE 0 END)/COUNT(*))*100 AS Has_credit_card,
	(SUM(CASE WHEN HasCrCard = 'No' THEN 1 ELSE 0 END)/COUNT(*))*100 AS No_credit_card
FROM bank_customer_churn;

		-- Active status percnetage
SELECT
	(SUM(CASE WHEN IsActiveMember = 'Active' THEN 1 ELSE 0 END)/COUNT(*))*100 AS Active_members,
	(SUM(CASE WHEN IsActiveMember = 'Inactive' THEN 1 ELSE 0 END)/COUNT(*))*100 AS Inactive_members
FROM bank_customer_churn;

		-- Complaints registered percentage
SELECT
	(SUM(CASE WHEN Complain = 'Yes' THEN 1 ELSE 0 END)/COUNT(*))*100 AS Complaints,
	(SUM(CASE WHEN Complain = 'No' THEN 1 ELSE 0 END)/COUNT(*))*100 AS No_complaints
FROM bank_customer_churn;

		-- Customer disrtribution by Number of products bought
SELECT NumOfProducts, COUNT(*)
FROM bank_customer_churn
GROUP BY NumOfProducts
ORDER BY NumOfProducts;

		-- Customer churn by Gender
SELECT Gender,Exited,COUNT(*)
FROM bank_customer_churn
GROUP BY Gender,Exited
ORDER BY GENDER DESC,Exited;

		-- Customer churn by Location
SELECT Geography,Exited,COUNT(*)
FROM bank_customer_churn
GROUP BY Geography,Exited
ORDER BY Geography ASC,Exited;

		-- Ratings by Customers
SELECT `Satisfaction Score`,COUNT(*)
FROM bank_customer_churn
GROUP BY `Satisfaction Score`
ORDER BY `Satisfaction Score`;

		-- Age VS customer distribution
SELECT
	CASE
		WHEN Age BETWEEN 18 AND 27 THEN '18-27'
        WHEN Age BETWEEN 28 AND 37 THEN '28-37'
        WHEN Age BETWEEN 38 AND 47 THEN '38-47'
        WHEN Age BETWEEN 48 AND 57 THEN '48-57'
        WHEN Age BETWEEN 58 AND 67 THEN '58-67'
        WHEN Age BETWEEN 68 AND 77 THEN '68-77'
        WHEN Age BETWEEN 78 AND 87 THEN '78-87'
        WHEN Age BETWEEN 78 AND 87 THEN '88-97'
        ELSE '97+'
	END AS Age_range,
COUNT(*) AS Customers
FROM bank_customer_churn
GROUP BY Age_range
ORDER BY Age_range;        
       
		-- Salary VS Balance
SELECT * FROM bank_customer_churn;
SELECT
	CASE
		WHEN EstimatedSalary BETWEEN 0 AND 20000 THEN '0-20K'
        WHEN EstimatedSalary BETWEEN 20000 AND 40000 THEN '20-40K'
        WHEN EstimatedSalary BETWEEN 40000 AND 60000 THEN '40-60K'
        WHEN EstimatedSalary BETWEEN 60000 AND 80000 THEN '60-80K'
        WHEN EstimatedSalary BETWEEN 80000 AND 100000 THEN '80-100K'
        WHEN EstimatedSalary BETWEEN 100000 AND 120000 THEN '100-120K'
        WHEN EstimatedSalary BETWEEN 120000 AND 140000 THEN '120-140K'
        WHEN EstimatedSalary BETWEEN 140000 AND 160000 THEN '140-160K'
        WHEN EstimatedSalary BETWEEN 160000 AND 180000 THEN '160-180K'
        WHEN EstimatedSalary BETWEEN 180000 AND 200000 THEN '180-200K'
        ELSE '200K+'
	END AS Salary_range,
ROUND(AVG(Balance),2) AS Avg_Balance
FROM bank_customer_churn
GROUP BY Salary_range
ORDER BY Salary_range;

		-- 	Tenure by Customer distributions
SELECT Tenure,COUNT(*) AS customer_distribution
FROM bank_customer_churn
GROUP BY Tenure
ORDER BY Tenure;
