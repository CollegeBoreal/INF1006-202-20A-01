-- Ma premiere requete 
SELECT first_name, country
FROM country 
JOIN city USING (country_id)
JOIN address using (city_id)
JOIN customer using (address_id)
WHERE country  LIKE "congo%"
GROUP BY first_name, country;

-- Imprimer le nom et le montant de la facture totale des personnes habitant la ville de Lubumbashi

-- Imprimer le nom et le montant de factures des personnes habitant le Congo ou l'algerie (ANSI-92)

-- Imprimer le nom et le montant de la facture totale des personnes habitant le Congo ou l'Algerie (ANSI-92)

-- Quel(le) acteur(rice) est apparu(e) dans le plus de films?

-- Quel est la longueur moyenne des films par catégorie? Trié par longueur moyenne

-- Quel sont les catégories qui ont les plus longs films (i.e. dépassant la longueur moyenne) ? Trié par longueur moyenne
