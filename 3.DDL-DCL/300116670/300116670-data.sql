-- donnees table fournisseurs
INSERT INTO FOURNISSEURS (Nom, Coordonnees,Adresse) VALUES ('HJC','647-555-6678','1 Yonge street');
INSERT INTO FOURNISSEURS (Nom, Coordonnees,Adresse) VALUES ('BEL-PAK','647-655-6778','21 Barthust street');
INSERT INTO FOURNISSEURS (Nom, Coordonnees,Adresse) VALUES ('ROLLMAX','647-666-8978','121 Egglinton street');
INSERT INTO FOURNISSEURS (Nom, Coordonnees,Adresse) VALUES ('BERTAFREY','647-858-6978','90 Lawrence street');

-- donnees table produits

INSERT INTO PRODUITS (Nom_du_produit,Prix_du_produit,fournisseur) VALUES('Quad 4x4',2250,1);
INSERT INTO PRODUITS (Nom_du_produit,Prix_du_produit,fournisseur) VALUES('Goldwing',27000,2);
INSERT INTO PRODUITS (Nom_du_produit,Prix_du_produit,fournisseur) VALUES('Buggy 4x4',1000,3);
INSERT INTO PRODUITS (Nom_du_produit,Prix_du_produit,fournisseur) VALUES('Quad T3',7000,3);
INSERT INTO PRODUITS (Nom_du_produit,Prix_du_produit,fournisseur) VALUES('SSV',10000,4);
INSERT INTO PRODUITS (Nom_du_produit,Prix_du_produit,fournisseur) VALUES('Panigale V4',1150,4);
INSERT INTO PRODUITS (Nom_du_produit,Prix_du_produit,fournisseur) VALUES('Harley Davidson',45000,1);
INSERT INTO PRODUITS (Nom_du_produit,Prix_du_produit,fournisseur) VALUES('Moto trial',3500,2);

-- donnees table ventes

INSERT INTO VENTES (client,produit,quantite,date_et_heure_de_la_vente,date_et_heure_de_livraison) VALUES(1,2,10,'2020-05-15 12:30:00','2020-05-15 17:00:00');
INSERT INTO VENTES (client,produit,quantite,date_et_heure_de_la_vente,date_et_heure_de_livraison) VALUES(3,3,5,'2020-06-30 10:30:00','2020-06-30 15:00:00');
INSERT INTO VENTES (client,produit,quantite,date_et_heure_de_la_vente,date_et_heure_de_livraison) VALUES(5,8,1,'2020-06-25 15:00:00','2020-06-25 20:30:30');
INSERT INTO VENTES (client,produit,quantite,date_et_heure_de_la_vente,date_et_heure_de_livraison) VALUES(2,4,20,'2019-01-31 09:15:00','2020-01-31 12:00:50');
INSERT INTO VENTES (client,produit,quantite,date_et_heure_de_la_vente,date_et_heure_de_livraison) VALUES(4,5,15,' 2019-02-02 09:30:00','2019-02-02 15:00:00');
INSERT INTO VENTES (client,produit,quantite,date_et_heure_de_la_vente,date_et_heure_de_livraison) VALUES(1,7,2,'2020-05-15 12:30:00','2020-05-20 17:00:00');
INSERT INTO VENTES (client,produit,quantite,date_et_heure_de_la_vente,date_et_heure_de_livraison) VALUES(3,5,5,'2020-03-30 10:30:00','2020-03-30 15:00:07');
INSERT INTO VENTES (client,produit,quantite,date_et_heure_de_la_vente,date_et_heure_de_livraison) VALUES(5,1,1,'2020-03-25 15:00:00','2020-03-25 20:30:30');
INSERT INTO VENTES (client,produit,quantite,date_et_heure_de_la_vente,date_et_heure_de_livraison) VALUES(2,6,20,'2019-01-31 09:15:00','2020-01-31 12:00:50');
INSERT INTO VENTES (client,produit,quantite,date_et_heure_de_la_vente,date_et_heure_de_livraison) VALUES(4,6,15,' 2019-02-02 14:30:00','2019-02-02 19:00:25');

-- donnees table clients

INSERT INTO CLIENTS (Nom,Prenom,Coordonnees,Adresse,Adresse_electronique) VALUES ('Kouta','Auriane','647-648-5657', ' 22 Garden avenue east','koutaauriane@gmail.com');
INSERT INTO CLIENTS (Nom,Prenom,Coordonnees,Adresse,Adresse_electronique) VALUES ('Batchi','Ezechiel','647-250-8987','123 Baldwin street','batchiezechiel@gmail.com');
INSERT INTO CLIENTS (Nom,Prenom,Coordonnees,Adresse,Adresse_electronique) VALUES ('Ngoma','Christopher','647-470-2250','79 Gridwood street','ngomachristopher@gmail.com');
INSERT INTO CLIENTS (Nom,Prenom,Coordonnees,Adresse,Adresse_electronique) VALUES ('Green','Desmond','647-270-2550','57 Combermere drive','greendesmond@gmail.colocationlocationproduitprix_locationNomm');
INSERT INTO CLIENTS (Nom,Prenom,Coordonnees,Adresse,Adresse_electronique) VALUES ('Moe','Roger','647-547-5957','101 Combermere drive','moegeorge@gmail.com');


-- donnees table location
INSERT INTO LOCATIONS (produit,prix_location) VALUES(1,1);
INSERT INTO LOCATIONS (produit,prix_location) VALUES(2,2);
INSERT INTO LOCATIONS (produit,prix_location) VALUES(3,3); 
INSERT INTO LOCATIONS (produit,prix_location) VALUES(4,4);
INSERT INTO LOCATIONS (produit,prix_location) VALUES(5.5);
INSERT INTO LOCATIONS (produit,prix_location) VALUES(6,6);
INSERT INTO LOCATIONS (produit,prix_location) VALUES(7,7);
INSERT INTO LOCATIONS (produit,prix_location) VALUES(8,8);



-- donnees table service
INSERT INTO SERVICE (location,client,produit,quantite,montant,date_de_sortie,date_de_retour) VALUES(1,2,4,5,2500,'2020-05-15 12:30:00','2020-05-16 17:00:00');
INSERT INTO SERVICE (location,client,produit,quantite,montant,date_de_sortie,date_de_retour) VALUES(2,5,3,2,500,'2020-07-31 10:30:00','2020-05-31 15:30:20');
INSERT INTO SERVICE (location,client,produit,quantite,montant,date_de_sortie,date_de_retour) VALUES(8,4,6,3,1200,'2020-06-14 09:00:00','2020-05-15 11:15:00');
INSERT INTO SERVICE (location,client,produit,quantite,montant,date_de_sortie,date_de_retour) VALUES(6,1,7,10,5000,'2020-05-15 11:30:00','2020-05-15 18:45:00');
INSERT INTO SERVICE (location,client,produit,quantite,montant,date_de_sortie,date_de_retour) VALUES(7,3,5,30,19800,'2020-12-29 12:30:00','2020-05-15 17:00:00');

-- donnees prix_location
INSERT INTO PRIX_LOCATIONS (prix_location,location) VALUES(500,4);
INSERT INTO PRIX_LOCATIONS (prix_location,location) VALUES(250,3);
INSERT INTO PRIX_LOCATIONS (prix_location,location) VALUES(400,6);
INSERT INTO PRIX_LOCATIONS (prix_location,location) VALUES(660,5);
INSERT INTO PRIX_LOCATIONS (prix_location,location) VALUES(500,7);
