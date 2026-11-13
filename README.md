_**Customer Churn Analysis

1. Project Overview

This project focuses on analyzing customer churn in a telecommunications company using the IBM Telco Customer Churn dataset.

The objective is to understand customer behavior, identify factors contributing to customer churn, and generate meaningful business insights that can help improve customer retention.

2. Project Objectives

- Understand customer data and its structure.
- Identify and handle missing values.
- Perform data cleaning and validation.
- Analyze customer churn patterns.
- Identify factors influencing customer churn.
- Generate actionable business insights.

3. Dataset Description

- Dataset: IBM Telco Customer Churn Dataset
- Source: Kaggle – BlastChar
- Total Records: 7,043
- Total Columns: 21
- File Format: CSV

Dataset Link:
https://www.kaggle.com/datasets/blastchar/telco-customer-churn

4. Tools Used

- Microsoft Excel
- SQL
- Power BI
- GitHub

5. Data Preparation and Cleaning – Microsoft Excel

Step 1: Dataset Import

- Downloaded the IBM Telco Customer Churn dataset from Kaggle.
- Extracted the downloaded dataset.
- Opened the CSV file in Microsoft Excel.

Step 2: Worksheet Setup

- Renamed the worksheet to "Raw_Data".
- Reviewed the dataset structure.
- Checked the column headers.

Step 3: Dataset Inspection

- Identified the total number of records (7,043).
- Verified the total number of columns (21).
- Reviewed the available customer information and data fields.

Step 4: Missing Value Inspection

- Started checking columns for missing or blank values.

- Selected the "TotalCharges" column for inspection.

- Created a helper column named "Blank_Check".

- Used the Excel "ISBLANK()" function:
  
  "=ISBLANK(T2)"

- Applied the formula to all records using Fill Down.

- Used Conditional Formatting to highlight TRUE results in red.

Result:

- Total records checked: 7,045
- All checked cells returned FALSE.
- No genuinely empty cells were identified using ISBLANK() in the TotalCharges column.

Note: Further data validation and cleaning will be performed as the project progresses.

6. Project Workflow

1. Data Cleaning and Analysis – Excel
2. Customer Segmentation and SQL Analysis – SQL
3. Interactive Dashboard Development – Power BI
4. Business Insights and Recommendations
5. Project Documentation and Portfolio – GitHub

7. Project Status

Excel data inspection and cleaning are currently in progress.