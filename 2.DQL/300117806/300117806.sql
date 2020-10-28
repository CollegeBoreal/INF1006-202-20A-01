Imprimer le nom et le montant de la facture totale des personnes habitant la ville de Lubumbashi

SELECT city.city, customer.last_name, SUM(payment.amount)  FROM city 
JOIN address USING (city_id)
JOIN customer USING (address_id)
JOIN payment USING (customer_id)
WHERE city = 'Lubumbashi'
GROUP BY city.city, customer.last_name;


Imprimer le nom et le montant de factures des personnes habitant le Congo ou l'algerie (ANSI-92)
SELECT country.country, customer.last_name, payment.amount FROM country
JOIN city USING (country_id)
JOIN address USING (city_id)
JOIN customer USING (address_id)
JOIN payment USING (customer_id)
WHERE country = "Algeria" OR country LIKE "Congo%"





Imprimer le nom et le montant de la facture totale des personnes habitant le Congo ou l'Algerie (ANSI-92)









Quel(le) acteur(rice) est apparu(e) dans le plus de films?








Quel est la longueur moyenne des films par catégorie? Trié par longueur moyenne
SELECT name AS categories, AVG(length) AS long_moyenne
FROM film
JOIN film_category USING (film_id)
JOIN category USING (category_id)
GROUP BY name
ORDER BY AVG(length) ;




Quel sont les catégories qui ont les plus longs films (i.e. dépassant la longueur moyenne) ? Trié par longueur moyenn

(SELECT AVG(length) from film)SELECT name AS categories, AVG(length) AS moyenne,
COUNT(length) AS longeur_film FROM film
JOIN film_category USING (film_id)
JOIN category USING (category_id)
GROUP BY name
HAVING (SELECT COUNT(length) FROM film) >
ORDER BY AVG(length);









