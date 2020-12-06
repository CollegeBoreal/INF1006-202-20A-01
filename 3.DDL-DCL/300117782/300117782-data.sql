
-- Creation des données de la table plat

INSERT INTO PLATS (Nom_du_plat, Montant) VALUES ("BEIGNET", 20);
INSERT INTO PLATS (Nom_du_plat, Montant) VALUES ("Haricot", 15);
INSERT INTO PLATS (Nom_du_plat, Montant) VALUES ("Boullir", 15);
INSERT INTO PLATS (Nom_du_plat, Montant) VALUES ("Rizotto", 25);


--Creation des données de la table ingredient

INSERT INTO INGREDIENTS (Nom_ingredient) VALUES ("Farine_de_ble");
INSERT INTO INGREDIENTS (Nom_ingredient) VALUES ("Haricot");
INSERT INTO INGREDIENTS (Nom_ingredient) VALUES ("Epices");
INSERT INTO INGREDIENTS (Nom_ingredient) VALUES ("Levure");
INSERT INTO INGREDIENTS (Nom_ingredient) VALUES ("Sucre");
INSERT INTO INGREDIENTS (Nom_ingredient) VALUES ("Levure");
INSERT INTO INGREDIENTS (Nom_ingredient) VALUES ("Mais");


-- Creation des donnees de la table recette

INSERT INTO RECETTES (Nom_de_la_recette, Ingredient, plat) VALUES ("Beignet", 1, 2 );
INSERT INTO RECETTES (Nom_de_la_recette, Ingredient, plat) VALUES ("Haricot", 2, 1 );
INSERT INTO RECETTES (Nom_de_la_recette, Ingredient, plat) VALUES ("Mais", 7, 3);


-- Creation des donnees de la table commande4

INSERT INTO COMMANDES (Date_et_heure_de_commande, Plat) VALUES ('2020-03-02' '05:40:10', 1);
INSERT INTO COMMANDES (Date_et_heure_de_commande, Plat) VALUES ('2020-03-05' '08:10:08', 2);
INSERT INTO COMMANDES (Date_et_heure_de_commande, Plat) VALUES ('2020-11-07' '07:20:90', 4);
INSERT INTO COMMANDES (Date_et_heure_de_commande, Plat) VALUES ('2020-11-06' '10:20:70', 3);


-- Creation des donnees de la table client

INSERT INTO CLIENTS (Nom_du_ client, Commande) VALUES ("Nathalie", 2);
INSERT INTO CLIENTS (Nom_du_ client, Commande) VALUES ("Hassana", 3);
INSERT INTO CLIENTS (Nom_du_ client, Commande) VALUES ("Bright", 1);
INSERT INTO CLIENTS (Nom_duclient, Commande) VALUES ("Indri", 4);


-- Creation des donnens de la table facture

INSERT INTO FACTURE(montant, quantites) VALUES (15, 1);
INSERT INTO FACTURE(montant, quantites) VALUES (20, 3);
INSERT INTO FACTURE(montant, quantites) VALUES (25, 1);
INSERT INTO FACTURE(montant, quantites) VALUES (15, 2);


-- Creation des donnees de la table paiement

INSERT INTO PAIEMENTS (montant, Date_et_heure_de_paiement, client, facture, commande) VALUES (15, '2020-03-02''05:40:30', 1, 1,1);
INSERT INTO PAIEMENTS (montant, Date_et_heure_de_paiement, client, facture, commande) VALUES (25, '2020-03-05''08:10:30', 2, 2,2);
INSERT INTO PAIEMENTS (montant, Date_et_heure_de_paiement, client, facture, commande) VALUES (15, '2020-11-07''07:20:90', 3, 3,3);
INSERT INTO PAIEMENTS (montant, Date_et_heure_de_paiement, client, facture, commande) VALUES (15, '2020-11-06''10:350:30', 4, 4,4);





                                                                                              












