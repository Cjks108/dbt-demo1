WITH sales_data AS (
    SELECT 
        Order_ID,
        Order_Date,
        Ship_Date,
        Customer_ID,
        Customer_Name,
        Product_ID,
        Category,
        Sub_Category,
        Sales,
        Quantity,
        Discount,
        Profit
    FROM {{ source('superstore', 'superstore_sales') }}
)
SELECT * FROM sales_data;
