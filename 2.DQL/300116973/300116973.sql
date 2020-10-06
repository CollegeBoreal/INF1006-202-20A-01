-- Ma requette SQL

SELECT * FROM sakila.customer join sakila.film_actor

SELECT * FROM sakila.actor where first_name = 'NICK';

-- Imprimer le nom et le montant de la facture totale des personnes habitant la ville de Lubumbashi

SELECT city, country FROM city JOIN country using (country_id) WHERE city like "%L";

-- Imprimer le nom et le montant de factures des personnes habitant le Congo et l'algerie (ANSI-92)


-- Imprimer le nom et le montant de la facture totale des personnes habitant le Congo et l'Algerie (ANSI-92)


-- Quel(le) acteur(rice) est apparu(e) dans le plus de films?


-- Quel est la longueur moyenne des films par catégorie? Trié par longueur moyenne


-- Quel sont les catégories qui ont les plus longs films (i.e. dépassant la longueur moyenne) ? Trié par longueur moyenne
