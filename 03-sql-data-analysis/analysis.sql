-- Query 1: Dataset overview
SELECT 
    COUNT(*) AS total_books,
    ROUND(AVG(price), 2) AS avg_price,
    MIN(price) AS min_price,
    MAX(price) AS max_price
FROM books;

-- Query 2: Most expensive books
SELECT title, price
FROM books
ORDER BY price DESC
LIMIT 5;

-- Query 3: Cheapest books
SELECT title, price
FROM books
ORDER BY price ASC
LIMIT 5;

-- Query 4: Books by price category
SELECT
  CASE
    WHEN price < 20 THEN 'Low'
    WHEN price BETWEEN 20 AND 40 THEN 'Medium'
    ELSE 'High'
  END AS price_category,
  COUNT(*) AS book_count
FROM books
GROUP BY price_category;

-- Query 5: Books priced above average
SELECT title, price
FROM books
WHERE price > (SELECT AVG(price) FROM books)
ORDER BY price DESC;

-- Query 6: Rank books by price
SELECT
  title,
  price,
  RANK() OVER (ORDER BY price DESC) AS price_rank
FROM books;
