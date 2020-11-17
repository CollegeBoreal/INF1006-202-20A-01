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

-- donnee de la tables commandes

INSERT INTO COMMANDES (Date_de_commande, quantite, produit) VALUES ('2020-10-01', 20, 1);
INSERT INTO COMMANDES (Date_de_commande, quantite, produit) VALUES ('2020-8-01', 100, 3);
INSERT INTO COMMANDES (Date_de_commande, quantite, produit) VALUES ('2020-9-01', 60, 2);
INSERT INTO COMMANDES (Date_de_commande, quantite, produit) VALUES ('2020-11-01', 20, 6);
INSERT INTO COMMANDES (Date_de_commande, quantite, produit) VALUES ('2020-11-01', 40, 5);

-- donnee de la table clients


INSERT INTO CLIENTS (Nom, Numero_de_telephone, Email, commande) VALUES ('sandrine', 99334456, 'sandrine@gmail.com', 1);
INSERT INTO CLIENTS (Nom, Numero_de_telephone, Email, commande) VALUES ('ets jullie', 97334456, 'jully@gmail.com', 2);
INSERT INTO CLIENTS (Nom, Numero_de_telephone, Email, commande) VALUES ('jean', 99994456, 'jean@gmail.com', 1);
INSERT INTO CLIENTS (Nom, Numero_de_telephone, Email, commande) VALUES ('valerie', 89334456, 'valerie@gmail.com', 3);
INSERT INTO CLIENTS (Nom, Numero_de_telephone, Email, commande) VALUES ('quentin', 89334400, 'quentin@gmail.com', 3);

-- donnee de la table achats

INSERT INTO ACHATS (Montant, quantites, produit) VALUES (100000, 20, 1);
INSERT INTO ACHATS (Montant, quantites, produit) VALUES (1200000, 60, 3);
INSERT INTO ACHATS (Montant, quantites, produit) VALUES (11100000, 60, 2);
INSERT INTO ACHATS (Montant, quantites, produit) VALUES (50000, 20, 6);
INSERT INTO ACHATS (Montant, quantites, produit) VALUES (4000, 40, 5);

-- donnee de la table facture

INSERT INTO FACTURES (Montant, quantites) VALUES (1000, 3);
INSERT INTO FACTURES (Montant, quantites) VALUES (2000, 10);
INSERT INTO FACTURES (Montant, quantites) VALUES (6000, 11);
INSERT INTO FACTURES (Montant, quantites) VALUES (7000, 6);
INSERT INTO FACTURES (Montant, quantites) VALUES (12000, 20);
INSERT INTO FACTURES (Montant, quantites) VALUES (6000, 11);

-- donnee de la table employes

INSERT INTO EMPLOYES (Nom, Prenom, Numero_de_telephone) VALUES ('Noumsi', 'Pascaline', 983344556);
INSERT INTO EMPLOYES (Nom, Prenom, Numero_de_telephone) VALUES ('tuekam', 'suzanne', 783344556);
INSERT INTO EMPLOYES (Nom, Prenom, Numero_de_telephone) VALUES ('kameni', 'Andree', 983345500);
INSERT INTO EMPLOYES (Nom, Prenom, Numero_de_telephone) VALUES ('lago', 'Nathalie', 683344556);
INSERT INTO EMPLOYES (Nom, Prenom, Numero_de_telephone) VALUES ('tuedjo', 'cristiane', 773344556);


