-- donnee de la table fournisseurs

INSERT INTO FOURNISSEURS (Nom_du_fournisseur, Numero_de_telephone, Email, Adresse) VALUES ('CHOCOCAM', 33224420, 'chococam@chococam.cm', 'BP 234');
INSERT INTO FOURNISSEURS (Nom_du_fournisseur, Numero_de_telephone, Email, Adresse) VALUES ('CAMLAIT', 33224422, 'camlait@camlait.cm', 'BP 334');
INSERT INTO FOURNISSEURS (Nom_du_fournisseur, Numero_de_telephone, Email, Adresse) VALUES ('BRASSERIE', 32224422, 'brasserie@brasserie.cm', 'BP 434');
INSERT INTO FOURNISSEURS (Nom_du_fournisseur, Numero_de_telephone, Email, Adresse) VALUES ('GUINNESS CAMEROUN', 32324422, 'guinness@guinness.cm', 'BP 434');
INSERT INTO FOURNISSEURS (Nom_du_fournisseur, Numero_de_telephone, Email, Adresse) VALUES ('BIOPHARMA', '32234422', 'bioparma@biopharma.cm', 'BP 434');

-- donnee de la tables produits

INSERT INTO PRODUITS (Nom_du_produit, Numero_de_reference, Date_de_peremption, fournisseur) VALUES ('bonbon alcoolise', 'b322', '2022-01-30', 1);
INSERT INTO PRODUITS (Nom_du_produit, Numero_de_reference, Date_de_peremption, fournisseur) VALUES ('bonbon kola', 'b323', '2022-01-30', 1);
INSERT INTO PRODUITS (Nom_du_produit, Numero_de_reference, Date_de_peremption, fournisseur) VALUES ('chocolat pasteurise', 'c322', '2023-01-30', 1);
INSERT INTO PRODUITS (Nom_du_produit, Numero_de_reference, Date_de_peremption, fournisseur) VALUES ('margarine', 'm322', '2025-01-30', 2);
INSERT INTO PRODUITS (Nom_du_produit, Numero_de_reference, Date_de_peremption, fournisseur) VALUES ('huile mayor', 'h322', '2030-01-30', 1);
INSERT INTO PRODUITS (Nom_du_produit, Numero_de_reference, Date_de_peremption, fournisseur) VALUES ('yaourt camlait', 'y322', '2020-12-30', 2);
INSERT INTO PRODUITS (Nom_du_produit, Numero_de_reference, Date_de_peremption, fournisseur) VALUES ('guinness smoth', 'g322', '2022-01-30', 4);

-- donnee de la table clients


INSERT INTO CLIENTS (Nom, Numero_de_telephone, Email) VALUES ('sandrine', 99334456, 'sandrine@gmail.com');
INSERT INTO CLIENTS (Nom, Numero_de_telephone, Email) VALUES ('ets jullie', 97334456, 'jully@gmail.com');
INSERT INTO CLIENTS (Nom, Numero_de_telephone, Email) VALUES ('jean', 99994456, 'jean@gmail.com');
INSERT INTO CLIENTS (Nom, Numero_de_telephone, Email) VALUES ('valerie', 89334456, 'valerie@gmail.com');
INSERT INTO CLIENTS (Nom, Numero_de_telephone, Email) VALUES ('quentin', 89334400, 'quentin@gmail.com');

-- donnee de la tables commandes

INSERT INTO COMMANDES (Commande, Date_de_commande, Date_et_heure_de_livraison, quantite, produit, client) VALUES (11,'2020-10-01', '2020-10-05''06:20:00', 20, 1, 1);
INSERT INTO COMMANDES (commande, Date_de_commande, Date_et_heure_de_livraison, quantite, produit, client) VALUES (12, '2020-8-01', '2020-8-05''07:30:55', 100, 3, 1);
INSERT INTO COMMANDES (commande, Date_de_commande, Date_et_heure_de_livraison, quantite, produit, client) VALUES (13, '2020-9-01', '2020-09-05''11:15:09', 59, 2, 2);
INSERT INTO COMMANDES (commande, Date_de_commande, Date_et_heure_de_livraison, quantite, produit, client) VALUES (14, '2020-11-01', '2020-11-05''10:15:40', 20, 6, 3);
INSERT INTO COMMANDES (commande, Date_de_commande, Date_et_heure_de_livraison, quantite, produit, client) VALUES (15, '2020-11-01', '2020-11-05''09:19:45', 40, 5, 4);


-- donnee de la table achats

INSERT INTO ACHATS (Montant, quantites, Date_dachat, produit) VALUES (100000, 20, '2020-11-05''09:19:45', 1);
INSERT INTO ACHATS (Montant, quantites, Date_dachat, produit) VALUES (1200000, 60, '2020-11-05''09:19:45', 3);
INSERT INTO ACHATS (Montant, quantites, Date_dachat, produit) VALUES (11100000, 60, '2020-11-05''09:19:45', 2);
INSERT INTO ACHATS (Montant, quantites, Date_dachat, produit) VALUES (50000, 20, '2020-11-05''09:19:45', 6);
INSERT INTO ACHATS (Montant, quantites, Date_dachat, produit) VALUES (4000, 40, '2020-11-05''09:19:45', 5);


-- donnee de la table employes

INSERT INTO EMPLOYES (Nom, Prenom, Numero_de_telephone, Sexe_feminin, achat) VALUES ('Noumsi', 'Pascaline', 983344556, TRUE, 1);
INSERT INTO EMPLOYES (Nom, Prenom, Numero_de_telephone,  Sexe_feminin, achat) VALUES ('tuekam', 'suzanne', 783344556, TRUE, 1);
INSERT INTO EMPLOYES (Nom, Prenom, Numero_de_telephone,  Sexe_feminin, achat) VALUES ('kameni', 'Andree', 983345500, FALSE, 2);
INSERT INTO EMPLOYES (Nom, Prenom, Numero_de_telephone,  Sexe_feminin, achat) VALUES ('lago', 'Nathalie', 683344556, TRUE, 3);
INSERT INTO EMPLOYES (Nom, Prenom, Numero_de_telephone,  Sexe_feminin, achat) VALUES ('tuedjo', 'cristiane', 773344556, TRUE, 4);

-- donnee de la table facture

INSERT INTO FACTURES (Montant, quantites, commande) VALUES (1000, 3, 11);
INSERT INTO FACTURES (Montant, quantites, commande) VALUES (2000, 10, 12);
INSERT INTO FACTURES (Montant, quantites, commande) VALUES (6000, 11, 13);
INSERT INTO FACTURES (Montant, quantites, commande) VALUES (7000, 6, 14);
INSERT INTO FACTURES (Montant, quantites, commande) VALUES (12000, 20, 15);
INSERT INTO FACTURES (Montant, quantites, commande) VALUES (3000, 11, 14);

-- donnee de la table paiements

INSERT INTO PAIEMENTS (Montant, facture) VALUES (1000, 1);
INSERT INTO PAIEMENTS (Montant, facture) VALUES (2000, 2);
INSERT INTO PAIEMENTS (Montant, facture) VALUES (6000, 3);
INSERT INTO PAIEMENTS (Montant, facture) VALUES (7000, 4);
INSERT INTO PAIEMENTS (Montant, facture) VALUES (12000, 5);
INSERT INTO PAIEMENTS (Montant, facture) VALUES (3000, 6);




