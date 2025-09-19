USE onlinebookstore_db;
SELECT * FROM books;
SELECT * FROM customers;
SELECT * FROM orders;

-- 1. Retrieve all books in the “Fiction” genre. 
SELECT Title , Genre 
FROM books 
WHERE Genre = "Fiction";

-- 2. Find books published after the year 1950. 
SELECT Title , Published_Year 
FROM books 
WHERE Published_Year > 1950;

-- 3. List all customers from Canada. 
SELECT Name , Country 
FROM customers 
WHERE Country = "Canada";

-- 4. Show orders placed in November 2023. 
SELECT orders.Book_ID, orders.Order_Date, books.Title
FROM orders
INNER JOIN books ON orders.Book_ID = books.Book_ID
WHERE orders.Order_Date LIKE '%2023-09%';

-- 5. Retrieve the total stock of books available.
SELECT Title "Books" , Stock "Available Stock" 
FROM books
Where Stock > 1;

-- 6. Find the details of the most expensive book. 
SELECT * FROM books 
ORDER BY Price desc 
limit 1;

-- 7. Show all customers who ordered more than 1 quantity of a book. 
SELECT customers.Name , orders.Quantity 
FROM customers 
INNER JOIN orders ON customers.Customer_ID = orders.Customer_ID
WHERE orders.Quantity > 1;

-- 8. Retrieve all orders where the total amount exceeds $20.
SELECT books.Title "Books", orders.Total_Amount
FROM books 
INNER JOIN orders ON orders.Book_ID = books.Book_ID
WHERE orders.Total_Amount > 20;

-- 9. List all distinct genres in the bookstore. 
SELECT DISTINCT Genre 
FROM books;

-- 10. Find the book with the lowest stock available.
SELECT Title "Book", Price 
FROM books 
ORDER BY Price LIMIT 1;

-- 11. Calculate the total revenue from all orders.
SELECT Sum(Total_Amount) "Total Revenue"
FROM orders;

-- Intermediate Level:
 
 -- 12. Retrieve the total number of books sold for each genre.
 SELECT books.Genre , SUM(orders.Quantity) "Total books sold"
 FROM books INNER JOIN orders 
 ON books.Book_ID = orders.Book_ID
 GROUP BY books.Genre;
 
-- 13. Find the average price of books in the “Fantasy” genre. 
SELECT Genre , ROUND(AVG(Price),2) 
FROM books 
WHERE Genre = "Fantasy";

-- 14. List customers who have placed at least 2 orders. 
SELECT customers.Name , SUM(orders.Quantity) "Order Placed"
FROM customers 
INNER JOIN orders ON customers.Customer_ID = orders.Customer_ID
GROUP BY customers.Name
HAVING SUM(orders.Quantity) >= 2;

-- 15. Find the most frequently ordered book. 
SELECT b.Title, COUNT(o.Book_ID) AS order_count
FROM orders o
INNER JOIN books b ON o.Book_ID = b.Book_ID
GROUP BY b.Title
ORDER BY order_count DESC
LIMIT 1;
 
-- 16. Show the top 3 most expensive books of the “Fantasy” genre.
SELECT Title , Price 
FROM books 
ORDER BY Price DESC
LIMIT 3;


-- Advanced Level:
 
-- 17. Retrieve the total quantity of books sold by each author. 
SELECT books.Author , SUM(orders.Quantity) "Total Sales"
FROM books 
INNER JOIN orders ON books.Book_ID = orders.Book_ID
GROUP BY books.Author;

-- 18. List the cities of customers who spent over $30. 
SELECT customers.City , orders.Total_Amount 
FROM customers
INNER JOIN orders ON customers.Customer_ID = orders.Customer_ID
WHERE orders.Total_Amount > 30;

-- 19. Find the customer who spent the most on orders. 
SELECT customers.Name , orders.Total_Amount
FROM customers
INNER JOIN orders ON customers.Customer_ID = orders.Customer_ID
ORDER BY orders.Total_Amount DESC
LIMIT 1;

-- 20. Calculate the stock remaining after fulfilling all orders. 
SELECT books.Title "Book Name", books.Stock - SUM(orders.Quantity) "Remaining Stock"
FROM books
INNER JOIN orders ON books.Book_ID = orders.Book_ID
GROUP BY books.Title,books.Stock;

