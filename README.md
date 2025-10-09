# 📊 SQL August Major Project (Fact, Product, and Location Tables)

## 🧩 Overview
This project demonstrates **data analysis using SQL (Microsoft SQL Server)** with three related tables:

- `FactTable.csv` – contains sales, profit, and expense metrics  
- `ProductTable.csv` – contains product details and classifications  
- `LocationTable.csv` – contains state and market information  

A set of **29 SQL queries** have been written to explore, summarize, and manipulate the data, showcasing SQL concepts such as:
- Filtering (`WHERE`)
- Aggregation (`SUM`, `AVG`, `COUNT`, etc.)
- Joins
- Grouping (`GROUP BY`, `ROLLUP`)
- Ranking (`DENSE_RANK`)
- Stored Procedures and User Defined Functions (UDF)
- Conditional logic (`CASE WHEN`)
- Delete and updates

---

## 🗂️ Dataset Structure

### **1️⃣ FactTable**
| Column | Type | Description |
|--------|------|--------------|
| Date | DATE | Transaction date |
| ProductID | INT | Links to `ProductTable` |
| Profit | DECIMAL(10,2) | Profit amount |
| Sales | DECIMAL(10,2) | Sales amount |
| Margin | DECIMAL(10,2) | Profit margin |
| COGS | DECIMAL(10,2) | Cost of Goods Sold |
| Total_Expenses | DECIMAL(10,2) | Combined expense value |
| Marketing | DECIMAL(10,2) | Marketing spend |
| Inventory | DECIMAL(10,2) | Inventory value |
| Budget_Profit | DECIMAL(10,2) | Planned profit |
| Budget_COGS | DECIMAL(10,2) | Planned cost of goods |
| Budget_Margin | DECIMAL(10,2) | Planned margin |
| Budget_Sales | DECIMAL(10,2) | Planned sales |
| Area_Code | INT | Links to `LocationTable` |

---

### **2️⃣ ProductTable**
| Column | Type | Description |
|--------|------|--------------|
| Product_Type | VARCHAR(50) | Product category (e.g., Coffee, Tea) |
| Product | VARCHAR(100) | Product name |
| ProductID | INT | Primary key |
| Type | VARCHAR(50) | Product class (e.g., Regular, Premium) |

---

### **3️⃣ LocationTable**
| Column | Type | Description |
|--------|------|--------------|
| Area_Code | INT | Unique area identifier |
| State | VARCHAR(100) | State name |
| Market | VARCHAR(100) | Market name |
| Market_Size | VARCHAR(50) | Size classification (Small/Medium/Large) |

---

## ⚙️ Setup Instructions
1️⃣ Import Data
Go to Database in Object Explorer
Select August_Major_project
Then Right click on August_Major_project
Then Select Task
Then Click on import flat file
Then Click on Specify input file
Then click on Browse
Click Next
Then finish

💡 SQL Query List (1–29)
#	Description	SQL Concepts
1	Count number of states	COUNT, DISTINCT
2	Count of regular type products	WHERE
3	Total marketing spend for ProductID=1	SUM
4	Minimum sales value	MIN
5	Maximum cost of goods sold (COGS)	MAX
6	Details of Coffee products	Filtering
7	Records where total expenses > 40	WHERE
8	Average sales for area code 719	AVG
9	Total profit by state	JOIN + SUM
10	Average inventory per product	GROUP BY
11	Display all states alphabetically	ORDER BY
12	Average budget sales where margin > 100	HAVING
13	Total sales on a specific date	WHERE + SUM
14	Average total expense per product per date	GROUP BY
15	Combined view (Fact + Product + Location)	Multiple JOINs
16	Rank products by sales (Dense Rank)	DENSE_RANK()
17	State-wise profit and sales	GROUP BY
18	State + Product-wise sales and profit	Multi-column GROUP BY
19	5% increase in sales	Arithmetic operations
20	Highest profit with Product Type	TOP + ORDER BY
21	Stored procedure by product type	PROCEDURE
22	Profit/Loss indicator	CASE WHEN
23	Weekly total sales with rollup	GROUP BY ROLLUP
24	UNION and INTERSECT by Area Code	Set operations
25	Function to get product by type	User-defined function
26	Update and undo product type	UPDATE + rollback
27	Filter expenses between 100 and 200	BETWEEN
28	Delete all Regular type products	DELETE
29	ASCII of 5th product character	ASCII + SUBSTRING

