## 1. Business Insights
1. The dataset contains 9994 sales transactions spanning nearly 4 years.
2. The Business Operates in 49 states and 531 cities.
3. The Customer base consists of 793 unique customers.
4. The Product Catalog contains 1850 products across 3 categories and 17 sub-categories.
5. The dataset provides sufficient data for analyzing sales trends, customer behaviour, product performance, and regional profitability.

## 2. Missing Value Analysis 
A review of all 21 columns found no missing values.

| Column Name | Missing Values | Status |
|-------------|----------------|--------|
| ALL Columns |       0        | Valid  |

Conclusion:- No missing values were identified in the dataset. All 21 Columns contain complete records, indicating good data quality and making the dataset suitable for analysis and dashboard development. 

## 3. Duplicate Analysis
Duplicate checks were performed on key identifier columns
  Row ID
  * Duplicate Records Found: 0
  * status: Valid

  Order ID
  * Duplicate ID were Identified.
  * This is expected because a single order can contain multiple products.

  Product ID
  * Duplicate Values were identified.
  * This is expected because the same product can be sold multiple time across different orders
  
  Conclusion
  No Duplicate records found in Row ID column, confirming that each transaction record is uniquely identified. Duplicate Order IDs and      Product ID are valid business scenarios and do not indicate data quality issues.  .
