  
--Marequete sql
SELECT * FROM sakila.actor WHERE first_name = 'NICK' ;
-- Imprimer le nom et le montant de la facture totale des personnes habitant la ville de Lubumbashi
SELECT city.city, customer.first_name, SUM(payment.amount)
FROM city
JOIN address USING (city_id)
JOIN customer USING (address_id)
JOIN payment USING (customer_id)
WHERE city = "Lubumbashi"
GROUP BY city.city, customer.first_name;
-- Imprimer le nom et le montant de factures des personnes habitant le Congo ou l'algerie (ANSI-92)
SELECT country.country, customer.first_name, payment.amount
FROM country 
JOIN city USING (country_id)
JOIN address USING (city_id)
JOIN customer USING (address_id)
JOIN payment USING ( customer_id)
WHERE country LIKE "congo%" OR country = "algeria"
;
-- Imprimer le nom et le montant de la facture totale des personnes habitant le Congo ou l'Algerie (ANSI-92)
SELECT country.country, customer.first_name, SUM(payment.amount)
FROM country 
JOIN city USING (country_id)
JOIN address USING (city_id)
JOIN customer USING (address_id)
JOIN payment USING ( customer_id)
WHERE country LIKE "congo%" OR country = "algeria"
GROUP BY country.country, customer.first_name;
;
-- Quel(le) acteur(rice) est apparu(e) dans le plus de films?
SELECT actor.first_name, COUNT(*)
FROM film 
JOIN film_actor USING (film_id)
JOIN actor USING (actor_id)

GROUP BY actor.first_name LIMIT 1;



--Quel est la longueur moyenne des films par catégorie? Trié par longueur moyenne 
SELECT category.name, AVG(film.length)
FROM film
JOIN film_category USING (film_id)
JOIN category USING (category_id)
GROUP BY category.name; 





-- Quel sont les catégories qui ont les plus longs films (i.e. dépassant la longueur moyenne) ? Trié par longueur moyenne
SELECT category.name, COUNT(length) > AVG(film.length)
FROM film
JOIN film_category USING (film_id)
JOIN category USING (category_id)
GROUP BY category.name; 




