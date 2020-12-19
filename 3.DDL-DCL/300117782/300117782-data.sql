
-- Creation des données de la table plat

INSERT INTO PLATS (Nom_du_plat, Montant) VALUES ("BEIGNET", 20);
INSERT INTO PLATS (Nom_du_plat, Montant) VALUES ("Haricot", 15);
INSERT INTO PLATS (Nom_du_plat, Montant) VALUES ("Boullir", 15);
INSERT INTO PLATS (Nom_du_plat, Montant) VALUES ("Rizotto", 25);


-- Creation des données de la table ingredient

INSERT INTO INGREDIENTS (Nom_ingredient) VALUES ("Farine_de_ble");
INSERT INTO INGREDIENTS (Nom_ingredient) VALUES ("Haricot");
INSERT INTO INGREDIENTS (Nom_ingredient) VALUES ("Epices");
INSERT INTO INGREDIENTS (Nom_ingredient) VALUES ("Levure");
INSERT INTO INGREDIENTS (Nom_ingredient) VALUES ("Sucre");
INSERT INTO INGREDIENTS (Nom_ingredient) VALUES ("Levure");
INSERT INTO INGREDIENTS (Nom_ingredient) VALUES ("Mais");


-- Creation des donnees de la table recette

INSERT INTO RECETTES (Nom_de_la_recette, Ingredient) VALUES ("Beignet", 1 );
INSERT INTO RECETTES (Nom_de_la_recette, Ingredient) VALUES ("Haricot", 2 );
INSERT INTO RECETTES (Nom_de_la_recette, Ingredient) VALUES ("Mais", 7);



-- Creation des donnees de la table commande

INSERT INTO COMMANDES (Date_et_heure_de_commande, Plat) VALUES ('2020-03-02 05:40:10', 1);
INSERT INTO COMMANDES (Date_et_heure_de_commande, Plat) VALUES ('2020-03-05 08:10:08', 2);
INSERT INTO COMMANDES (Date_et_heure_de_commande, Plat) VALUES ('2020-11-07 07:20:09', 4);
INSERT INTO COMMANDES (Date_et_heure_de_commande, Plat) VALUES ('2020-11-06 10:20:20', 3);


-- Creation des donnees de la table client

INSERT INTO CLIENTS (Nom_du_client, Commande) VALUES ("Nathalie", 2);
INSERT INTO CLIENTS (Nom_du_client, Commande) VALUES ("Hassana", 3);
INSERT INTO CLIENTS (Nom_du_client, Commande) VALUES ("Bright", 1);
INSERT INTO CLIENTS (Nom_du_client, Commande) VALUES ("Indri", 4);


-- Creation des donnens de la table facture

INSERT INTO FACTURES (montant, quantites) VALUES (15, 1);
INSERT INTO FACTURES (montant, quantites) VALUES (20, 3);
INSERT INTO FACTURES (montant, quantites) VALUES (25, 1);
INSERT INTO FACTURES (montant, quantites) VALUES (15, 2);


-- Creation des donnees de la table paiement

INSERT INTO PAIEMENTS (paiement, montant, Date_et_heure_de_paiement, facture) VALUES (1, 15, '2020-03-02 05:40:30', 1);
INSERT INTO PAIEMENTS (paiement, montant, Date_et_heure_de_paiement, facture) VALUES (2, 25, '2020-03-05 08:10:30', 2);
INSERT INTO PAIEMENTS (paiement, montant, Date_et_heure_de_paiement, facture) VALUES (3, 15, '2020-11-07 07:20:40', 3);
INSERT INTO PAIEMENTS (paiement, montant, Date_et_heure_de_paiement, facture) VALUES (4, 15, '2020-11-06 10:35:30', 4);




                                                                                              












