# 🛒 E-Commerce SQL Analysis Project

## 📌 Project Overview

This project demonstrates SQL analysis on a relational E-commerce database using MySQL. The database consists of customers, orders, order items, and products tables. The project focuses on solving real-world business problems using SQL queries and extracting meaningful business insights.

---

## 🎯 Objectives

- Design a relational E-commerce database.
- Perform SQL analysis using multiple tables.
- Answer business questions using SQL.
- Practice Joins, Aggregate Functions, GROUP BY, HAVING, Subqueries, and Date Functions.
- Build a portfolio-ready SQL project.

---

## 🗄️ Database Schema

The project consists of the following tables:

### 1. Customers
- customer_id
- name
- email
- city
- signup_date

### 2. Orders
- order_id
- customer_id
- order_date
- order_status

### 3. Products
- product_id
- product_name
- category
- price
- stock

### 4. Order_Items
- order_item_id
- order_id
- product_id
- quantity

---

## 🔗 Database Relationships

Customers (1) ────────< Orders

Orders (1) ───────────< Order_Items

Products (1) ─────────< Order_Items

---

## 📊 SQL Concepts Used

- SELECT
- WHERE
- ORDER BY
- GROUP BY
- HAVING
- INNER JOIN
- Aggregate Functions
  - SUM()
  - COUNT()
  - AVG()
- DISTINCT
- ROUND()
- Aliases
- Foreign Keys

---

## 📈 Business Questions Solved

### Customer Analysis
- Top Customers by Total Spend
- Customers with Multiple Orders
- Total Products Purchased by Each Customer
- Customers with Delivered Orders

### Product Analysis
- Top Selling Products
- Products Never Ordered
- Products Sold by Category
- Product-wise Sales Quantity

### Order Analysis
- Delivered Orders
- Pending Orders
- Cancelled Orders
- Orders by City
- Orders by Date

### Sales Analysis
- Revenue by Product
- Revenue by Category
- Total Sales
- Total Quantity Sold

---

## 💻 Example SQL Query

```sql
SELECT
    c.customer_id,
    c.name,
    SUM(oi.quantity) AS total_products,
    ROUND(SUM(oi.quantity * p.price),2) AS total_spend
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id
JOIN order_items oi
    ON o.order_id = oi.order_id
JOIN products p
    ON oi.product_id = p.product_id
WHERE o.order_status = 'Delivered'
GROUP BY c.customer_id, c.name
ORDER BY total_spend DESC;
```

---

## 🛠️ Tools Used

- MySQL Workbench
- MySQL
- Git
- GitHub

---


## 📸 Project Screenshots

Include screenshots of:

- Database Schema
- Tables
- SQL Queries
- Query Results
- MySQL Workbench

---

## 📚 Skills Demonstrated

- Relational Database Design
- SQL Query Writing
- Data Analysis
- Business Intelligence
- Data Aggregation
- Multi-table Joins
- SQL Optimization

---

## 🎓 Learning Outcomes

Through this project, I gained practical experience in:

- Designing relational databases.
- Writing optimized SQL queries.
- Performing business analysis using SQL.
- Joining multiple tables to generate insights.
- Creating portfolio-ready SQL projects.


- LinkedIn: www.linkedin.com/in/akhilesh-yadav-068582297

---

## ⭐ If you found this project useful, consider giving it a Star!
