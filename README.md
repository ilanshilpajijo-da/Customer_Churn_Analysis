# Customer Churn Analysis

## 1. Project Overview

This project focuses on analyzing customer churn in a telecommunications company using the IBM Telco Customer Churn dataset.

The objective is to understand customer behavior, identify factors contributing to customer churn, and generate meaningful business insights that can help improve customer retention.

## 2. Project Objectives

- Understand customer data and its structure.
- Identify and handle missing values.
- Perform data cleaning and validation.
- Analyze customer churn patterns.
- Identify factors influencing customer churn.
- Generate actionable business insights.

## 3. Dataset Description

- **Dataset:** IBM Telco Customer Churn Dataset
- **Source:** Kaggle – BlastChar
- **Total Records:** 7,043
- **Total Columns:** 21
- **File Format:** CSV

Dataset Link: https://www.kaggle.com/datasets/blastchar/telco-customer-churn

## 4. Tools Used

- Microsoft Excel
- SQL
- Power BI
- GitHub

## 5. Data Preparation and Cleaning

### Workbook Structure
| Sheet | Purpose |
|---|---|
| Raw_Data | Original dataset, never modified |
| Cleaned_data | Data after quality fixes |
| Analysis_Data | Cleaned data plus derived columns, used for analysis |
| Dataquality_log | Record of every issue found and fixed |

### Step 1: Data Import
- Downloaded the IBM Telco Customer Churn dataset from Kaggle and imported the CSV into Excel.
- Confirmed 7,043 records and 21 columns.

### Step 2: Preserve Original Data
- Kept the original data in `Raw_Data` untouched.
- Created `Cleaned_data` as a copy for all cleaning work.

### Step 3: Missing Value Check (TotalCharges)
- `ISBLANK` returned no blanks, but this was misleading: 11 cells contained a hidden space.
- Detected them with `=SUMPRODUCT(--(TRIM(T2:T7044)=""))` (result: 11).
- Verified with `=COUNTIFS(T2:T7044,0,F2:F7044,0)` that all 11 rows have tenure = 0, so they are new customers who have not been billed yet.
- Replaced the 11 blanks with 0 and converted the column to Number.
- Result: blanks 11 → 0; `COUNT` of TotalCharges = 7,043.

### Step 4: Duplicate Check
- Checked CustomerID with `=SUMPRODUCT(--(COUNTIF(A2:A7044,A2:A7044)>1))`.
- Result: 0 duplicates.

### Step 5: Categorical Consistency
- Reviewed distinct values of every categorical column using filters. No spelling or case issues found.
- Replaced "No phone service" with "No" in MultipleLines (682 cells).
- Replaced "No internet service" with "No" in the six internet add-on columns (9,156 cells).
- Reason: these values mean the same as "No", and keeping them would split one category in two.
- Converted SeniorCitizen from 0/1 to No/Yes (5,901 No, 1,142 Yes; total 7,043) to match the other columns.

## 6. Data Preparation (Analysis_Data)

New columns were created in a separate sheet so `Cleaned_data` stays intact.

| Column | Rule | Check |
|---|---|---|
| Churn_Flag | Yes = 1, No = 0 | Sum = 1,869 churned customers (26.5% churn rate) |
| Tenure_Group | 0-12, 13-24, 25-48, 49+ months | Groups total 7,043 |
| Charge_Band | Low (< 35), Medium (35 to 69.99), High (70+) monthly charges | Bands total 7,043 |

Charge_Band thresholds are my own choice, picked to split the 18 to 119 monthly charge range into roughly even groups.

## 7. Current Project Status

Data cleaning and data preparation are complete. Next stage: exploratory data analysis with PivotTables.

## 8. Upcoming Tasks

1. Perform exploratory data analysis (EDA) using PivotTables.
2. Analyze churn distribution and churn rate by segment.
3. Identify patterns and factors associated with churn.
4. Develop charts and visualizations.
5. Perform customer segmentation using SQL.
6. Build an interactive Power BI dashboard.
7. Document business insights and recommendations.

## 9. Expected Outcome

The final objective is to transform raw customer data into meaningful business insights that help understand customer churn, identify high-risk customer segments, and support better customer retention strategies.