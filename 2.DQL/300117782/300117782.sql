-- Ma premiere requete 
SELECT first_name, country
FROM country 
JOIN city USING (country_id)
JOIN address using (city_id)
JOIN customer using (address_id)
WHERE country  LIKE "congo%"
GROUP BY first_name, country;

-- Imprimer le nom et le montant de la facture totale des personnes habitant la ville de Lubumbashi
SELECT city.city, first_name, SUM(amount)
FROM city
JOIN address USING (city_id)
JOIN customer USING (address_id)
JOIN payment USING  (customer_id)
WHERE city = "Lubumbashi"
GROUP BY city.city, first_name;

-- Imprimer le nom et le montant de factures des personnes habitant le Congo ou l'algerie (ANSI-92)
SELECT country.country, last_name, amount
FROM country
JOIN city USING (country_id)
JOIN address USING (CITY_ID)
JOIN customer USING (address_id)
JOIN payment USING (customer_id)
WHERE country = "Algeria" or country LIKE "Congo%";

-- Imprimer le nom et le montant de la facture totale des personnes habitant le Congo ou l'Algerie (ANSI-92)

-- Quel(le) acteur(rice) est apparu(e) dans le plus de films?

-- Quel est la longueur moyenne des films par catégorie? Trié par longueur moyenne

-- Quel sont les catégories qui ont les plus longs films (i.e. dépassant la longueur moyenne) ? Trié par longueur moyenne
