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
  
  ### Conclusion:
  No Duplicate records found in Row ID column, confirming that each transaction record is uniquely identified. Duplicate Order IDs and      Product ID are valid business scenarios and do not indicate data quality issues. 
  
## 4. Data Type Validation

| Column Name  | Expected Data Type  | Status |
|--------------|---------------------|--------|
|Row ID        |  Integer            |  valid |
|Order ID      |  Text               |  valid |
|Order Date    |  Date               |  valid |
|Ship Date     |  Date               |  valid |
|Ship Mode     |  Text               |  valid |
|Customer ID   |  Text               |  valid |
|Customer Name |  Text               |  valid |
|Segment       |  Text               |  valid |
|Country       |  Text               |  valid |
|City          |  Text               |  valid |
|State         |  Text               |  valid |
|Postal Code   |  Text               |  valid |
|Region        |  Text               |  valid |
|Product ID    |  Text               |  valid |
|Category      |  Text               |  valid |
|Sub-Catgeory  |  Text               |  valid |
|Product Name  |  Text               |  valid |
|Sales         |  Decimal            |  valid |
|Quantity      |  Integer            |  valid |
|Discount      |  Decimal            |  valid |
|Profit        |  Decimal            |  valid |


# Data Consistency Check
The dataset was reviewed to identify unsual or inconsistent values that could affect the analysis.

|check             | Result      | Status|
|------------------|-------------|-------|
| Minimum Sales    | 0.444       | Valid |
| Maximum Sales    | 22638.48    | Valid |
| Minimum Profit   | -6599.978   | Valid |
| Maximum Profit   | 8399.976    | Valid |
| Minimum Discount | 0           | Valid |
| Maximum Discount | 0.8 (80 % ) | Valid |
| Minimum Quantity | 1           | Valid |
| Maximum Quantity | 14          | Valid |

### Observation:
* Sales value are positive, indicating no invalid negative sales transaction.
* Profit include negative values, which represent loss-making orders and are valid business scenarios.
* Discount range from 0% to 80%, showing that some orders received significant dicounts.
* Quality values ranges from 1 to 14 units, which is resonable for retail transactions.

### Conclusion:
  No data consistency issues were identified. The dataset contains valid business transactions and is suitable for further analysis. 


