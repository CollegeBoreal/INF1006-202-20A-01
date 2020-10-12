--Marequete sql
SELECT * FROM sakila.country join sakila.film_country USING (film_id)
-- Imprimer le nom et le montant de la facture totale des personnes habitant la ville de Lubumbashi
SELECT first_name,last_name,sum(amount) as facturetotale FROM customer 
JOIN address USING (address_id) 
JOIN city USING (city_id)
JOIN payment USING (customer_id)
WHERE city ="Lubumbashi"
GROUP BY first_name,last_name;
-- Imprimer le nom et le montant de factures des personnes habitant le Congo et l'algerie (ANSI-92)

SELECT first_name,last_name,amount as facture FROM customer 
JOIN address USING (address_id) 
JOIN city USING (city_id)
JOIN country USING (country_id)
JOIN payment USING (customer_id)
WHERE country ='Congo, The Democratic Republic of the' or country ='Algeria';

-- Imprimer le nom et le montant de la facture totale des personnes habitant le Congo et l'Algerie (ANSI-92)

SELECT first_name,last_name,sum(amount) as factureTotale FROM customer 
JOIN address USING (address_id) 
JOIN city USING (city_id)
JOIN country USING (country_id)
JOIN payment USING (customer_id)
WHERE country ='Congo, The Democratic Republic of the' or country ='Algeria'
group by first_name,last_name;

-- Quel(le) acteur(rice) est apparu(e) dans le plus de films?

SELECT count(film_id) as nb , first_name,last_name FROM actor 
JOIN film_actor USING (actor_id)
JOIN film USING (film_id)
group by first_name,last_name
order by count(film_id) desc
limit 1;

-- Quel est la longueur moyenne des films par catégorie? Trié par longueur moyenne

SELECT AVG(length),name FROM film_category 
JOIN film USING (film_id)
JOIN category USING (category_id)
group by name;

-- Quel sont les catégories qui ont les plus longs films (i.e. dépassant la longueur moyenne) ? Trié par longueur moyenne
SELECT AVG(length) as Moy,name FROM film 
JOIN film_category USING (film_id)
JOIN category USING (category_id)
group by name
having avg(length)>(SELECT avg(length) from film);
