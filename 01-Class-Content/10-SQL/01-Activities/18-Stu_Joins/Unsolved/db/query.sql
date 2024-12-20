-- Add your code below and execute file in the PostgreSQL Shell --
SELECT 
 favorite_books.book_name AS name,
 book_price.price AS price, 
  FROM favorite_books 
  JOIN book_price ON favorite_books.book_price = book_price.id;