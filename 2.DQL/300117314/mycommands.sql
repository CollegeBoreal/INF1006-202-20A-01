

SELECT city,customer.last_name, SUM(payment.amount) FROM city
JOIN address USING (city_id)
JOIN customer USING (address_id)
JOIN payment USING (customer_id)
WHERE city='lubumbashi'
GROUP BY city, customer.last_name;
