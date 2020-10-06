-- Ma requete SQL

SELECT * FROM film JOIN film_actor USING (film_id);

-- Imprimer le nom et le montant de la facture totale des personnes habitant la ville de Lubumbashi

SELECT city.city, customer.last_name, payment.amount FROM city 
JOIN address USING (city_id) 
JOIN customer USING (address_id)
JOIN payment USING (customer_id)
WHERE city = "Lubumbashi";

-- Imprimer le nom et le montant de factures des personnes habitant le Congo et l'algerie (ANSI-92)

-- Imprimer le nom et le montant de la facture totale des personnes habitant le Congo et l'Algerie (ANSI-92)

-- Quel(le) acteur(rice) est apparu(e) dans le plus de films?

-- Quel est la longueur moyenne des films par catégorie? Trié par longueur moyenne

-- Quel sont les catégories qui ont les plus longs films (i.e. dépassant la longueur moyenne) ? Trié par longueur moyenne
