USE ETREBIEN;

-- La table FOURNISSEURS

INSERT INTO FOURNISSEURS (Nom, Adresse, Telephone) VALUES ('BIOCAMP', '3 rue Legrand', 33401234);
INSERT INTO FOURNISSEURS (Nom, Adresse, Telephone) VALUES ('ARENA', '13 rue Sebastopol', 73441234);
INSERT INTO FOURNISSEURS (Nom, Adresse, Telephone) VALUES ('WESHWESH', '23 rue Gerald', 23401234);
INSERT INTO FOURNISSEURS (Nom, Adresse, Telephone) VALUES ('MOUSAOU', '32 rue Ubuntu', 73434234);
INSERT INTO FOURNISSEURS (Nom, Adresse, Telephone) VALUES ('SADAOUI', '28 rue Richard', 33401334);



-- La table CLIENTS

INSERT INTO CLIENTS (Nom, Prenom, Adresse, Telephone) VALUES ('Moussa', 'Kebache','11 rue Igor', 33467234);
INSERT INTO CLIENTS (Nom, Prenom, Adresse, Telephone) VALUES ('Rachidou', 'Lelouche', '12 rue Lacombe', 33401234);
INSERT INTO CLIENTS (Nom, Prenom, Adresse, Telephone) VALUES ('Alala', 'Yvan', '3 rue Legrand', 13401223);
INSERT INTO CLIENTS (Nom, Prenom, Adresse, Telephone) VALUES ('Melland', 'Marine', '23bis rue Shilling', 33401298);
INSERT INTO CLIENTS (Nom, Prenom, Adresse, Telephone) VALUES ('Yvano', 'Mohamed', '111 rue Canut', 12401234);


-- La TABLE PRODUITS

INSERT INTO PRODUITS (Nom_du_produit, fournisseur) VALUES ('Savon', 2);
INSERT INTO PRODUITS (Nom_du_produit, fournisseur) VALUES ('Degomant', 4);
INSERT INTO PRODUITS (Nom_du_produit, fournisseur) VALUES ('Exfoliant', 5);
INSERT INTO PRODUITS (Nom_du_produit, fournisseur) VALUES ('Gel douche', 2);
INSERT INTO PRODUITS (Nom_du_produit, fournisseur) VALUES ('Masque argile', 4);
INSERT INTO PRODUITS (Nom_du_produit, fournisseur) VALUES ('Masque charbon', 1);
INSERT INTO PRODUITS (Nom_du_produit, fournisseur) VALUES ('Creme visage', 3);


-- La table SERVICES


INSERT INTO SERVICES (Nom_du_service, fournisseur) VALUES ('Massage RMT', 3);
INSERT INTO SERVICES (Nom_du_service, fournisseur) VALUES ('Naturopathie', 3);
INSERT INTO SERVICES (Nom_du_service, fournisseur) VALUES ('Massage RMT', 2);
INSERT INTO SERVICES (Nom_du_service, fournisseur) VALUES ('Coach de vie', 2);
INSERT INTO SERVICES (Nom_du_service, fournisseur) VALUES ('Dieteticien', 1);


-- La table VENTES_DE_SERV


INSERT INTO VENTES_DE_SERV (client, Prix, Date_de_vente, service) VALUES (3, 100,'2020-10-01', 3);
INSERT INTO VENTES_DE_SERV (client, Prix, Date_de_vente, service) VALUES (6, 131.40,'2020-09-30', 5);
INSERT INTO VENTES_DE_SERV (client, Prix, Date_de_vente, service) VALUES (1, 111.02,'2020-10-23', 3);
INSERT INTO VENTES_DE_SERV (client, Prix, Date_de_vente, service) VALUES (2, 113,'2020-02-03', 5);
INSERT INTO VENTES_DE_SERV (client, Prix, Date_de_vente, service) VALUES (4, 110,'2020-03-01', 4);
INSERT INTO VENTES_DE_SERV (client, Prix, Date_de_vente, service) VALUES (5, 180,'2020-03-01',5);


-- La table VENTES_DE_PROD


INSERT INTO VENTES_DE_PROD (client, Prix, Date_de_vente, produit) VALUES (1, 11,'2020-09-12', 4);
INSERT INTO VENTES_DE_PROD (client, Prix, Date_de_vente, produit) VALUES (3, 11.20, '2020-09-10',5);
INSERT INTO VENTES_DE_PROD (client, Prix, Date_de_vente, produit) VALUES (2, 12,'2020-09-23',4);
INSERT INTO VENTES_DE_PROD (client, Prix, Date_de_vente, produit) VALUES (2, 13.40,'2020-09-11', 3);
INSERT INTO VENTES_DE_PROD (client, Prix, Date_de_vente, produit) VALUES (2, 11.70,'2020-09-30',2);


