-- Imprimer le nom et le montant de la facture totale des personnes habitant la ville de Lubumbashi

SELECT 
    m.last_name AS 'Nom',
    SUM(p.amount) AS 'Montant Total de la Facture'
FROM
    customer m,
    payment p,
    address a,
    city c
WHERE
    a.address_id = m.address_id AND    
    p.customer_id = m.customer_id AND
    c.city_id = a.city_id
        AND c.city LIKE 'Lubumbashi'
GROUP BY m.last_name;



-- Imprimer le nom et le montant de factures des personnes habitant le Congo et l'algerie (ANSI-92)


-- Imprimer le nom et le montant de la facture totale des personnes habitant le Congo et l'Algerie (ANSI-92)


-- Quel(le) acteur(rice) est apparu(e) dans le plus de films?
-- Quel est la longueur moyenne des films par catégorie? Trié par longueur moyenne
-- Quel sont les catégories qui ont les plus longs films (i.e. dépassant la longueur moyenne) ? Trié par longueur moyenne
