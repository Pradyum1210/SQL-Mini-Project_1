# 📚 Online Bookstore SQL Analysis  
### 🧠 End-to-End Database Exploration Using SQL

## 1️⃣ Project Overview

This project demonstrates how **SQL** can be used to analyze an **online bookstore database**.  
By writing queries ranging from basic to advanced, the project provides insights into:

- 📦 **Book Inventory** – stock levels, genres, most/least popular books  
- 🛒 **Customer Behavior** – purchasing trends, top spenders, customer demographics  
- 💰 **Sales & Revenue** – total sales, genre-wise revenue, order trends over time  

The project simulates **real-world e-commerce analytics**, showing how SQL helps in operational decisions and business insights.

---

## 2️⃣ Database Structure 🗂

The database consists of **3 core tables**:

### 📘 Books Table
| Column | Description |
|--------|-------------|
| `Book_ID` | Unique ID for each book |
| `Title` | Name of the book |
| `Author` | Book author |
| `Genre` | Book category |
| `Price` | Selling price |
| `Stock` | Available quantity |

### 🧑‍🤝‍🧑 Customers Table
| Column | Description |
|--------|-------------|
| `Customer_ID` | Unique customer identifier |
| `Name` | Customer's full name |
| `City` | Customer’s city |
| `Country` | Country of residence |

### 🛒 Orders Table
| Column | Description |
|--------|-------------|
| `Order_ID` | Unique order number |
| `Book_ID` | Book purchased |
| `Customer_ID` | Buyer information |
| `Quantity` | Number of copies ordered |
| `Order_Date` | Purchase date |

---

## 3️⃣ 📌 Dataset Link  
(Add your dataset or SQL file link here)

---

## 4️⃣ 🎯 Objectives of the Project

✔ Strengthen SQL skills through practical queries  
✔ Answer business-focused questions using SQL logic  
✔ Learn efficient query writing and optimization  
✔ Convert raw transactional data into meaningful insights  

---

## 5️⃣ 📝 Project Tasks & SQL Concepts Used

### 🔹 **Basic Queries**
- Retrieve all books from a specific genre (e.g., *Fiction*)
- List books published after a certain year  
- Show all customers from a given country  
- Display orders placed in *November 2023*  
- Find:
  - Most expensive book  
  - Book with lowest stock  

---

### 🔹 **Intermediate Queries**
- Total number of books sold per **genre**  
- Average price of **Fantasy** books  
- Customers who placed at least **2 orders**  
- Most frequently ordered book  
- Top **3 most expensive books** in the Fantasy category  

---

### 🔹 **Advanced Queries**  
- Total books sold per **author**  
- Cities of customers who spent **more than $30**  
- Identify the **top-spending customer** overall  
- Calculate **remaining stock**
