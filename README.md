# SQL-Sales-Analytics-Project

This project demonstrates a complete sales data analysis workflow using SQL. It starts with raw sales data from an Excel file and transforms it into a series of meaningful business insights using MySQL.
******************************************************************************************************************************************************************
[Product-Sales-Region.xlsx](https://github.com/user-attachments/files/21812354/Product-Sales-Region.xlsx)

****************************************************************************************************************************************************************
-------------------------------------------------------------------------The Data in Descending Order----------------------------------------------------------------
<img width="1024" height="500" alt="Screenshot 2025-08-16 171251" src="https://github.com/user-attachments/assets/964ab1b1-305b-4f84-bd39-6090d82cc2be" />

*****************************************************************************************************************************************************************
-----------------------------------------------------------------------Total Revenue With Respect To Product---------------------------------------------------------



<img width="980" height="527" alt="Screenshot 2025-08-16 171209" src="https://github.com/user-attachments/assets/5f1661b6-3a07-45d0-8580-016f43e53d94" />
*******************************************************************************************************************************************************************
---------------------------------------TOP 5 Customers--------------------------------------------------------------
<img width="1068" height="565" alt="Screenshot 2025-08-16 173120" src="https://github.com/user-attachments/assets/ffcb2660-98e6-441b-bce6-c097fa46d534" />

********************************************************************************************************************************************************************
------------------------------------------------------------------Revenue by Payment Methods-------------------------------------------------------------------------
<img width="1010" height="542" alt="Screenshot 2025-08-16 174328" src="https://github.com/user-attachments/assets/dd7e3100-e4b6-4d17-b300-c260397df456" />

********************************************************************************************************************************************************************
The project includes:

Step 1: Data Preparation and Importing
This is the foundational step where you get the raw data ready for analysis.

What you did: You took your sales data, which was initially in an Excel file, and prepared it for a database environment. This involved identifying the columns (Quantity, UnitPrice, OrderDate, etc.) and using the MySQL Workbench Data Import Wizard to load the data into a MySQL table.

Why it's important: A relational database is far more efficient and powerful for data analysis than a spreadsheet. It allows for complex queries, handles much larger datasets, and ensures data consistency, which are all limitations of a simple Excel file.

Step 2: Running Core Analytics Queries
This is the core analysis phase where you extract key business insights from your data.

What you did: You wrote and executed two crucial queries:

Monthly Revenue: This query used the DATE_FORMAT() function to group sales by month and calculate the total revenue for each month.

Top Products by Revenue: This query used aggregation functions like SUM() and GROUP BY to find the most profitable products.

Why it's important: These queries provide the fundamental business insights that managers need. They tell you how your company is performing over time and which products are driving the most profit.

Step 3: Creating Reusable Database Objects
This phase elevates your project from a simple analysis to a robust, repeatable solution.

What you did: You built three powerful database objects:

VIEW: You created a view (v_customer_ltv) that acts as a virtual table, simplifying a complex calculation for Customer Lifetime Value (LTV) into a simple, reusable object.

STORED PROCEDURE: You created a stored procedure (GetTopCustomers) to encapsulate a query. This means you can now find the top customers by simply calling the procedure, without rewriting the code each time.

TRIGGER: You implemented a trigger (check_unit_price) that automatically runs before an INSERT command. It prevents bad data (e.g., a unit price of zero or less) from ever being entered into your table.

Why it's important: These objects make your project scalable, efficient, and robust. The view simplifies complex reporting, the stored procedure automates recurring tasks, and the trigger ensures the data integrity of your entire project, which is critical for trustworthy analysis.
