-- confirm table data was successfully uploaded
SELECT * FROM review_id_table


-- combine tables and show only Y for vine
SELECT * FROM review_id_table
JOIN products ON review_id_table.product_id = products.product_id
JOIN customers ON review_id_table.customer_id = customers.customer_id
JOIN vine_table ON review_id_table.review_id = vine_table.review_id
WHERE vine_table.vine = 'Y';

-- didn't work as expected, need to alter before using
SELECT review_id_table.review_id, review_id_table.product_id, review_id_table.review_date, products.product_id, products.product_title FROM review_id_table
JOIN products ON review_id_table.product_id = products.product_id
GROUP BY review_id_table.review_id, review_id_table.product_id, review_id_table.review_date, products.product_id, products.product_title;

SELECT review_id_table.product_id, COUNT(review_id_table.review_id)
FROM review_id_table
JOIN products ON review_id_table.product_id = products.product_id
GROUP BY review_id_table.product_id;


 products.product_id, products.product_title