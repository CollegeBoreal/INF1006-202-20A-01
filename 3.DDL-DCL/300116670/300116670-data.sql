-- donnees table fournisseurs
INSERT INTO FOURNISSEURS (Nom, Coordonnees,Adresse) VALUES ('HJC','647-555-6678','1 Yonge street')
INSERT INTO FOURNISSEURS (Nom, Coordonnees,Adresse) VALUES ('BEL-PAK','647-655-6778','21 Barthust street')
INSERT INTO FOURNISSEURS (Nom, Coordonnees,Adresse) VALUES ('ROLLMAX','647-666-8978','121 Egglinton street')
INSERT INTO FOURNISSEURS (Nom, Coordonnees,Adresse) VALUES ('BERTAFREY','647-858-6978','90 Lawrence street')

-- donnees table produits

INSERT INTO PRODUITS (Nom_du_produit,Prix_du_produit,fournisseur) VALUES('Quad 4x4',2250,'BEL-PAK')
INSERT INTO PRODUITS (Nom_du_produit,Prix_du_produit,fournisseur) VALUES('Goldwing',27000,'ROLLMAX')
INSERT INTO PRODUITS (Nom_du_produit,Prix_du_produit,fournisseur) VALUES('Buggy 4x4',1000,'ROLLMAX')
INSERT INTO PRODUITS (Nom_du_produit,Prix_du_produit,fournisseur) VALUES('Quad T3',7000,'BERTAFREY')
INSERT INTO PRODUITS (Nom_du_produit,Prix_du_produit,fournisseur) VALUES('SSV',10000,'HJC')
INSERT INTO PRODUITS (Nom_du_produit,Prix_du_produit,fournisseur) VALUES('Panigale V4',1150,'BEL-PAK')
INSERT INTO PRODUITS (Nom_du_produit,Prix_du_produit,fournisseur) VALUES('Harley Davidson',45000,'HJC')
INSERT INTO PRODUITS (Nom_du_produit,Prix_du_produit,fournisseur) VALUES('Moto trial',3500,'BERTAFREY')

-- donnees table ventes

INSERT INTO VENTES (client,produit,quantite,date_et_heure_de_la_vente,date_et_heure_de_la_livraison) VALUES(1,2,10,'2020-05-15 12:30:00','2020-05-15 17:00:00')
INSERT INTO VENTES (client,produit,quantite,date_et_heure_de_la_vente,date_et_heure_de_la_livraison) VALUES(3,3,5,'2020-06-30 10:30:SS','2020-06-30 15h:00:07')
INSERT INTO VENTES (client,produit,quantite,date_et_heure_de_la_vente,date_et_heure_de_la_livraison) VALUES(5,8,1,'2020-06-25 15:00:00','2020-06-25 20:30:30')
INSERT INTO VENTES (client,produit,quantite,date_et_heure_de_la_vente,date_et_heure_de_la_livraison) VALUES(2,4,20,'2019-01-31 09:15:00','2020-01-31 12:00:50')
INSERT INTO VENTES (client,produit,quantite,date_et_heure_de_la_vente,date_et_heure_de_la_livraison) VALUES(4,5,15,' 2019-02-02 09:30:00','2019-02-02 15:00:00')
INSERT INTO VENTES (client,produit,quantite,date_et_heure_de_la_vente,date_et_heure_de_la_livraison) VALUES(1,7,2,'2020-05-15 12:30:00','2020-05-20 17:00:00')
INSERT INTO VENTES (client,produit,quantite,date_et_heure_de_la_vente,date_et_heure_de_la_livraison) VALUES(3,5,5,'2020-03-30 10:30:00','2020-03-30 15h:00:07')
INSERT INTO VENTES (client,produit,quantite,date_et_heure_de_la_vente,date_et_heure_de_la_livraison) VALUES(5,1,1,'2020-03-25 15:00:00','2020-03-25 20:30:30')
INSERT INTO VENTES (client,produit,quantite,date_et_heure_de_la_vente,date_et_heure_de_la_livraison) VALUES(2,6,20,'2019-01-31 09:15:00','2020-01-31 12:00:50')
INSERT INTO VENTES (client,produit,quantite,date_et_heure_de_la_vente,date_et_heure_de_la_livraison) VALUES(4,6,15,' 2019-02-02 14:30:00','2019-02-02 19:00:25')

-- donnees table clients

INSERT INTO CLIENTS (Nom,Prenom,Coordonnees,Adresse,Adresse_electronique) VALUES ('Kouta','Auriane','647-648-5657', ' 22 Garden avenue east','koutaauriane@gmail.com');
INSERT INTO CLIENTS (Nom,Prenom,Coordonnees,Adresse,Adresse_electronique) VALUES ('Batchi','Ezechiel','647-250-8987','123 Baldwin street','batchiezechiel@gmail.com');
INSERT INTO CLIENTS (Nom,Prenom,Coordonnees,Adresse,Adresse_electronique) VALUES ('Ngoma','Christopher','647-470-2250','79 Gridwood street','ngomachristopher@gmail.com');
INSERT INTO CLIENTS (Nom,Prenom,Coordonnees,Adresse,Adresse_electronique) VALUES ('Green','Desmond','647-270-2550','57 Combermere drive','greendesmond@gmail.colocationlocationproduitprix_locationNomm');
INSERT INTO CLIENTS (Nom,Prenom,Coordonnees,Adresse,Adresse_electronique) VALUES ('Moe','Roger','647-547-5957','101 Combermere drive','moegeorge@gmail.com');


-- donnees table location
INSERT INTO LOCATIONS (produit,prix_location) VALUES()
INSERT INTO LOCATIONS (produit,prix_location) VALUES()
INSERT INTO LOCATIONS (produit,prix_location) VALUES() 
INSERT INTO LOCATIONS (produit,prix_location) VALUES()
INSERT INTO LOCATIONS (produit,prix_location) VALUES()

-- donnees table service
INSERT INTO SERVICE (Nom,Prenom,Coordonnées,Adresse,Adresse_electronique) VALUES('Kouta','Auriane','647-648-5657,'22 Garden avenue east')
INSERT INTO SERVICE (Nom,Prenom,Coordonnées,Adresse,Adresse_electronique) VALUES('Batchi','Ezechiel','647-250-8987','123 Baldwin street')
INSERT INTO SERVICE (Nom,Prenom,Coordonnées,Adresse,Adresse_electronique) VALUES('Ngoma','Christopher','647-470-2250','79 Gridwood street') 
INSERT INTO SERVICE (Nom,Prenom,Coordonnées,Adresse,Adresse_electronique) VALUES('Green','Desmond',647-270-2550,'57 Combermere drive',ngoma)
INSERT INTO SERVICE (Nom,Prenom,Coordonnées,Adresse,Adresse_electronique) VALUES('Moe','Roger','647-547-5957,'101 Combermere drive')

-- donnees prix_location
INSERT INTO PRIX_LOCATIONS (prix_location,location) VALUES()
INSERT INTO PRIX_LOCATIONS (prix_location,location) VALUES()
INSERT INTO PRIX_LOCATIONS (prix_location,location) VALUES() 
INSERT INTO PRIX_LOCATIONS (prix_location,location) VALUES()
INSERT INTO PRIX_LOCATIONS (prix_location,location) VALUES()
