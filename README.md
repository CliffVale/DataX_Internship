# DataX Labs - Task 1: Data Cleaning and Preprocessing

## Objective
Clean and prepare the raw "Medical Appointment No Shows" Kaggle dataset for exploratory analysis and modeling. 

## Tools Used
* Python (Pandas)
* Jupyter Notebook

## Summary of Changes
The dataset underwent the following preprocessing steps to handle inconsistencies, missing values, and formatting issues:

* **Header Standardization:** Converted all column names to lowercase and replaced spaces/hyphens with underscores to ensure clean, uniform access (e.g., `PatientId` to `patientid`).
* **Missing Values Handling:** Assessed the dataset for null values using `.isnull().sum()`. The data was complete, requiring no row drops or imputation via `.dropna()` or `.fillna()`.
* **Duplicate Removal:** Checked for identical records. No exact duplicate rows were found in this specific dataset, but `.drop_duplicates()` was executed to guarantee uniqueness.
* **Text Standardization:** Cleaned the `gender` column by stripping trailing/leading whitespace and enforcing an uppercase string format ('M' and 'F') to prevent categorical fragmentation.
* **Data Type Correction:** 
  * Converted the `scheduledday` and `appointmentday` columns from string objects into proper Pandas `datetime64` objects for accurate time-series analysis.
  * Cast the `age` column strictly as an `int64` integer type.
