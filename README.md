# Video Rental Data Analysis (SQL Project)

This project is a comprehensive SQL-based analysis of a video rental business. It demonstrates how SQL can be used to clean data, extract meaningful business insights, and support decision-making using real-world database design and queries.

---

## 🗂️ Project Overview

The goal of this project is to:
- Create a relational database structure from scratch.
- Clean and validate imported datasets.
- Write SQL queries to analyze customer behavior, staff performance, revenue trends, and more.

---

## 🛠️ Tech Stack

- **Database**: PostgreSQL
- **Tools**: pgAdmin/ChatGpt
- **Language**: SQL

---

## 📁 Database Design

Tables created in this project:
- `Actor_Data`,
- `Address`,
- `City`,
- `Country`,
- `Customer`,
- `Customer_Spendings`,
- `Film`,
- `Film_Actor`,
- `Inventory`,
- `Rental`,
-  `Payment`
- `Staff`,
-  `Store`

## ER diagram was created using DB Diagram.

---

## 🔍 Data Cleaning

Performed null value checks across all major tables like:
- `Actor_Data`
- `Address`, `City`, `Country`
- `Customer`, `Film`, `Rental`, etc.

Null records in the `Rental` table were deleted to ensure accurate analysis.

---

## 📊 Key Business Insights & Queries

Below are the key queries and their purpose:

1. **Top 10 Most Rented Movies** – To identify customer preferences and Find out which movies are most popular.
2. **Top Spending Customers** – Helps target loyal/high-value customers.
3. **Most Active Cities** – Understand where the majority of business comes from.
4. **Staff Performance** – Track who is generating the most revenue.
5. **Inactive Customers** – Spot those who haven't rented in over 6 months.
6. **Busy Rental Hours** – Know peak business hours.
7. **High-Cost Films vs. Rentals** – Evaluate return on investment of expensive films.
8. **Monthly Income Trends** – View revenue month-over-month.
9. **Store-wise Rental Comparison** – Spot underperforming locations.
10. **Customer Rental History Patterns** – Helps with personalization and membership ideas.

---

## 📁 Folder Structure

sql_project/                 ← This is the main project folder
│

├── create_tables.sql        ← Contains all the SQL commands to create tables

├── data_cleaning.sql        ← SQL queries to check for nulls and clean the data

├── analysis_queries.sql     ← SQL queries for all your business insights (10 questions)

├── ER_diagram.dbml          ← File that have ER diagram (created using dbdiagram.io)

└── README.md                ← A markdown file that explains your project 


