# SQL-Sales-Analytics-Project

This project demonstrates a complete sales data analysis workflow using SQL. It starts with raw sales data from an Excel file and transforms it into a series of meaningful business insights using MySQL.
******************************************************************************************************************************************************************
**📂File : **  [Product-Sales-Region.xlsx](https://github.com/user-attachments/files/21812354/Product-Sales-Region.xlsx)

****************************************************************************************************************************************************************
# The Data in Descending Order
<img width="1024" height="500" alt="Screenshot 2025-08-16 171251" src="https://github.com/user-attachments/assets/964ab1b1-305b-4f84-bd39-6090d82cc2be" />

*****************************************************************************************************************************************************************
# Total Revenue With Respect To Product



<img width="980" height="527" alt="Screenshot 2025-08-16 171209" src="https://github.com/user-attachments/assets/5f1661b6-3a07-45d0-8580-016f43e53d94" />

# TOP 5 Customers
<img width="1068" height="565" alt="Screenshot 2025-08-16 173120" src="https://github.com/user-attachments/assets/ffcb2660-98e6-441b-bce6-c097fa46d534" />

**********************************************************************************************************************************************************
# Revenue by Payment Methods
<img width="1010" height="542" alt="Screenshot 2025-08-16 174328" src="https://github.com/user-attachments/assets/dd7e3100-e4b6-4d17-b300-c260397df456" />

**********************************************************************************************************************************************************
# The project includes:

Step 1: Data Preparation and Importing
This is the foundational step where you get the raw data ready for analysis.

What I did: I took your sales data, which was initially in an Excel file, and prepared it for a database environment. This involved identifying the columns (Quantity, UnitPrice, OrderDate, etc.) and using the MySQL Workbench Data Import Wizard to load the data into a MySQL table.

Why it's important: A relational database is far more efficient and powerful for data analysis than a spreadsheet. It allows for complex queries, handles much larger datasets, and ensures data consistency, which are all limitations of a simple Excel file.

Step 2: Running Core Analytics Queries
This is the core analysis phase where you extract key business insights from your data..



Monthly Revenue: This query used the DATE_FORMAT() function to group sales by month and calculate the total revenue for each month.
