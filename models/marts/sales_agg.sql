WITH sales_agg AS (
    SELECT 
        Category,
        Sub_Category,
        SUM(Sales) AS total_sales,
        SUM(Profit) AS total_profit,
        COUNT(DISTINCT Customer_ID) AS unique_customers
    FROM {{ ref('stg_sales') }}
    GROUP BY Category, Sub_Category
)
SELECT * FROM sales_agg;
