SELECT Genre, COUNT(*) AS Book_count
FROM amazon
GROUP BY Genre; 

SELECT       
Book_name,
Author,
Book_year,
Reviews
FROM 
Amazon
ORDER BY
Reviews DESC
LIMIT 50;

SELECT
Book_name,
Author,
Book_year,
User_rating
FROM
Amazon
WHERE
User_rating > 4
AND 
Book_year = 2019;

SELECT 
Book_name,
Author,
Book_year,
Reviews
FROM
Amazon
WHERE
Reviews > 10000
AND
Book_year = 2018;

SELECT 
Author,
COUNT(*) AS num_of_books
FROM
Amazon
GROUP BY
Author
ORDER BY
num_of_books DESC
LIMIT 10;

SELECT
Genre,
AVG(User_rating) AS avg_user_rating,
SUM(Reviews) AS sum_reviews
 FROM
 Amazon
GROUP BY
Genre
ORDER BY
sum_reviews DESC;


SELECT 
Book_name,
Author,
Price
FROM
Amazon
ORDER BY
Price DESC
LIMIT 10;

SELECT 
    Book_name,
    Author,
    Book_year,
    Reviews AS max_reviews
FROM 
    Amazon
WHERE 
    Reviews = (
        SELECT MAX(Reviews)
        FROM Amazon AS sub
        WHERE sub.Book_year = Amazon.Book_year
    )
ORDER BY 
    Book_year ASC;
    
    SELECT
    CASE
    WHEN Price < 10 THEN 'Under 10'
    WHEN Price BETWEEN 10 AND 20 THEN '10 - 20'
    WHEN Price BETWEEN 20 AND 30 THEN '20 - 30'
    ELSE 'Above 30'
    END AS Price_range,
    COUNT(*) AS Num_of_books
    FROM
    Amazon
    GROUP BY
    Price_range
    ORDER BY
    Price_range;