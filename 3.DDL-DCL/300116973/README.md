 # :green_heart: superette_2S_plus :green_heart:

:zap: La superette_2S_plus est specialisee:

:white_check_mark: Dans la vente et l'achat des marchandises en details
:white_check_mark: Dans la buvettes

 ## :green_heart: Representation de notre base de donnee
 

![image](images/1.JPG)


## :green_heart: Rapports

:ok_hand: Imprimer le nom et le montant des factures des clients ?

:ok_hand: Imprimer le nom et le montant du produit qui a ete le plus vendu?

:ok_hand: Imprimer  le montant des produits acheter le 2020-11-04?

:ok_hand: Quel est le chiffre d'affaire moyenne ? Trié par produit

:ok_hand: Quel est le client qui a le plus acheter les produits?

## :green_heart: requettes

-- IMPRIMER le nom et le montant des factures des clients ?

SELECT Nom, Montant
FROM CLIENTS
JOIN COMMANDES USING (commande)
JOIN FACTURES USING (commande)
GROUP BY Nom, Montant
;

-- Quel est le client qui a le plus acheter les produits?

SELECT CLIENTS.Nom, COUNT(*)
FROM FOURNISSEURS
JOIN PRODUITS USING (fournisseur)
JOIN COMMANDES USING (produit)
JOIN CLIENTS USING (commande)
GROUP BY CLIENTS.Nom
LIMIT 1;
