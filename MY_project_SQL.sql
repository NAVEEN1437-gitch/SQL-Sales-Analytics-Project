SELECT * FROM mysql_project.product_retail_sales;

SELECT
    DATE_FORMAT(OrderDate, '%Y-%m') AS order_month,
    COUNT(DISTINCT OrderID) AS orders_count,
    SUM(Quantity * UnitPrice) AS gross_revenue
FROM
   mysql_project.product_retail_sales
WHERE
    Returned = 0
GROUP BY
    order_month
ORDER BY
    order_month;
    
    SELECT
    Product,
    SUM(Quantity * UnitPrice) AS revenue
FROM
    mysql_project.product_retail_sales
WHERE
    Returned = 0
GROUP BY
    Product
ORDER BY
    revenue DESC
LIMIT 5;

CREATE OR REPLACE VIEW v_customer_ltv AS
SELECT
    OrderID,
    CustomerName,
    COUNT(OrderID) AS orders_count,
    SUM(Quantity * UnitPrice) AS lifetime_value
FROM
    mysql_project.product_retail_sales
WHERE
    Returned = 0
GROUP BY
    OrderID, CustomerName
ORDER BY
    lifetime_value DESC;
    
    SELECT
    *
FROM
    v_customer_ltv
ORDER BY
    lifetime_value DESC;
    

CREATE PROCEDURE GetTopCustomers(IN topN INT)

    SELECT
        CustomerName,
        SUM(Quantity * UnitPrice) AS total_spent
    FROM
          mysql_project.product_retail_sales
    WHERE
        Returned = 0
    GROUP BY
        CustomerName
    ORDER BY
        total_spent DESC
    LIMIT topN;




-- How to use the stored procedure
CALL GetTopCustomers(5);

--Revenue by Payment methods

SELECT
    PaymentMethod,
    SUM(Quantity * UnitPrice) AS total_revenue
FROM
    <your_actual_table_name>
WHERE
    Returned = 0
GROUP BY
    PaymentMethod
ORDER BY
    total_revenue DESC;





