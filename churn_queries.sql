--Total customers(expected 7043)
SELECT COUNT(*) FROM Churn;

--Churned customer (expected 1869).
SELECT COUNT(*) FROM Churn WHERE Churn='Yes';

--Churn rate(expected 26.5%).
SELECT ROUND(100 * AVG("Churn_Flag"),1) FROM Churn;

--First look at the table (5 rows).
SELECT *FROM Churn LIMIT 5;

--Show customer ID and contract type for the 5 first customers.
SELECT customerID, Contract FROM Churn LIMIT 5; 

--Show gender, tenure, MonthlyCharges for the first 8 customers.
SELECT gender, tenure, MonthlyCharges FROM Churn LIMIT 8;

--Check customer on month-month Contracts (Excel:3875)
SELECT COUNT(*) FROM Churn WHERE Contract='Month-to-month';

--Check customer on Two year Contracts (Excel:1695).
SELECT COUNT(*) FROM Churn WHERE Contract = 'Two year';

--Check customers using fiber optic as InternetService (Excel:3096).
SELECT COUNT(*) FROM Churn WHERE InternetService='Fiber optic';

-- Churn rate by Contract type(Excel 42.7%, 11.3%, 2.8%).
SELECT Contract, ROUND(100 * AVG("Churn_Flag"),1) FROM Churn GROUP BY Contract;

--Change Column name "Churn_Flag" to Churn_Flag.
--ALTER TABLE Churn RENAME COLUMN "Churn_Flag" to Churn_Flag;

--Churn rate by tenure group (Excel 47.4, 28.7, 20.4, 9.5)
SELECT Tenure_Group, ROUND(100 * AVG("Churn_Flag"),1) FROM Churn GROUP BY Tenure_Group;

--Churn rate by payment method (Excel 16.7, 15.2, 45.3, 19.1)
SELECT PaymentMethod, ROUND(100 * AVG("Churn_Flag"),1) FROM Churn GROUP BY PaymentMethod;

--Churn rate by InternetService ( Excel 19, 41.9, 7.4).
SELECT InternetService, ROUND(100 * AVG("Churn_Flag"),1) FROM Churn GROUP BY InternetService;

--Churn rate by Charge_Band (Excel 35.5, 10.9, 23.6 )
SELECT Charge_Band, ROUND(100 * AVG("Churn_Flag"),1) FROM Churn GROUP BY Charge_Band;

--Churn rate by SeniorCitizen ( Excel 23.6,41.7 ).
SELECT SeniorCitizen, ROUND(100 * AVG("Churn_Flag"),1) FROM Churn GROUP BY SeniorCitizen;

--Average Monthly charges:churned vs retained (Excel 61.27,74.44).
SELECT Churn, ROUND (AVG(MonthlyCharges),2) FROM Churn GROUP BY Churn;

--Customes with Month-to-month , Fiber optic and electronic check.
SELECT COUNT(*)FROM Churn WHERE Contract='Month-to-month' AND InternetService='Fiber optic' AND PaymentMethod='Electronic check';

--Count and churn rate for Month-to-month + fiber optic + electronic check.
SELECT COUNT(*),ROUND(100 * AVG("Churn_Flag"),1) FROM Churn WHERE Contract='Month-to-month' AND InternetService='Fiber optic' AND PaymentMethod='Electronic check';

--Monthly revenue lost to churned customers
SELECT ROUND (SUM(MonthlyCharges),2) FROM Churn WHERE Churn='Yes';

