-- Imprimer le nom et le montant de la facture totale des personnes habitant la ville de Lubumbashi

SELECT city.city, customer.last_name, SUM(payment.amount) FROM city 
JOIN address USING (city_id) 
JOIN customer USING (address_id)
JOIN payment USING (customer_id)
WHERE city = "Lubumbashi"
GROUP BY city.city, customer.last_name;

-- Imprimer le nom et le montant de factures des personnes habitant le Congo et l'algerie (ANSI-92)



-- Imprimer le nom et le montant de la facture totale des personnes habitant le Congo et l'Algerie (ANSI-92)

SELECT country.country, customer.last_name, SUM(payment.amount) FROM country
JOIN city USING (country_id) 
JOIN address USING (city_id)
JOIN customer USING (address_id)
JOIN payment USING (customer_id)
WHERE country LIKE "Congo%" 
OR country = "Algeria"
GROUP BY country.country, customer.last_name;

-- Quel(le) acteur(rice) est apparu(e) dans le plus de films?

SELECT film.film_id, actor.actor_id FROM film
JOIN film_actor USING film_id
JOIN actor USING actor_id
GROUP BY actor.last_name
ORDER BY COUNT (*)
LIMIT 1;


-- Quel est la longueur moyenne des films par catégorie? Trié par longueur moyenne
-- Quel sont les catégories qui ont les plus longs films (i.e. dépassant la longueur moyenne) ? Trié par longueur moyenne
