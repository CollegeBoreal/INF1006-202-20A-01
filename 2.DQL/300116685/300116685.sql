--ma premiere requete-- 
SELECT * FROM sakila.actor;
SELECT * FROM sakila.actor where first_name = 'JENNIFER ' ;
--Imprimer le nom et le montant de la facture totale des personnes habitant la ville de Lubumbashi
SELECT city, country FROM city JOIN country USING (country_id) WHERE ville like  ' Lu% ' ;
--Imprimer le nom et le montant de factures des personnes habitant le Congo et l'algerie (ANSI-92)
SELECT country.country, customer.first_name, payment.amount
from country  
JOIN city using (country_id)
JOIN address using (city_id)
JOIN customer using (address_id)
JOIN payment using (customer_id)
WHERE country LIKE "Congo" OR "Algerie"
--Imprimer le nom et le montant de la facture totale des personnes habitant le Congo et l'Algérie (ANSI-92)
--Quel (le) acteur (riz) est apparu (e) dans le plus de films?
--Quel est la longueur moyenne des films par catégorie? Trié par longueur moyenne
--Quels sont les catégories qui ont les plus longs films (ie dépassant la longueur moyenne)? Trié par longueur moyenne
