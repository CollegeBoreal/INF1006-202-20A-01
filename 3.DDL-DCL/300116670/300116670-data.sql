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

INSERT INTO VENTES (client,produit,quantite,date_et_heure_de_la_vente,date_et_heure_de_la_livraison) VALUES('',2250,'standard')
INSERT INTO VENTES (client,produit,quantite,date_et_heure_de_la_vente,date_et_heure_de_la_livraison) VALUES('Goldwing',27000,'premium')
INSERT INTO VENTES (client,produit,quantite,date_et_heure_de_la_vente,date_et_heure_de_la_livraison) VALUES('Buggy 4x4',1000,'standard')
INSERT INTO VENTES (client,produit,quantite,date_et_heure_de_la_vente,date_et_heure_de_la_livraison) VALUES('Quad T3',7000,'premium')
INSERT INTO VENTES (client,produit,quantite,date_et_heure_de_la_vente,date_et_heure_de_la_livraison) VALUES('SSV',10000,'premium')

-- donnees table clients

INSERT INTO CLIENTS (Nom,Prenom,Coordonnées,Adresse,Adresse_electronique) VALUES('Kouta','Auriane','647-648-5657,'22 Garden avenue east')
INSERT INTO CLIENTS (Nom,Prenom,Coordonnées,Adresse,Adresse_electronique) VALUES('Batchi','Ezechiel','647-250-8987','123 Baldwin street')
INSERT INTO CLIENTS (Nom,Prenom,Coordonnées,Adresse,Adresse_electronique) VALUES('Ngoma','Christopher','647-470-2250','79 Gridwood street') 
INSERT INTO CLIENTS (Nom,Prenom,Coordonnées,Adresse,Adresse_electronique) VALUES('Green','Desmond',647-270-2550,'57 Combermere drive',ngoma)
INSERT INTO CLIENTS (Nom,Prenom,Coordonnées,Adresse,Adresse_electronique) VALUES('Moe','Roger','647-547-5957,'101 Combermere drive')


-- donnees table location
INSERT INTO LOCATIONS (produit,prix_location) VALUES('Kouta','Auriane','647-648-5657,'22 Garden avenue east')
INSERT INTO LOCATIONS (produit,prix_location) VALUES('Batchi','Ezechiel','647-250-8987','123 Baldwin street')
INSERT INTO LOCATIONS (produit,prix_location) VALUES('Ngoma','Christopher','647-470-2250','79 Gridwood street') 
INSERT INTO LOCATIONS (produit,prix_location) VALUES('Green','Desmond',647-270-2550,'57 Combermere drive',ngoma)
INSERT INTO LOCATIONS (produit,prix_location) VALUES('Moe','Roger','647-547-5957,'101 Combermere drive')

-- donnees table service
INSERT INTO VENTES (Nom,Prenom,Coordonnées,Adresse,Adresse_electronique) VALUES('Kouta','Auriane','647-648-5657,'22 Garden avenue east')
INSERT INTO VENTES (Nom,Prenom,Coordonnées,Adresse,Adresse_electronique) VALUES('Batchi','Ezechiel','647-250-8987','123 Baldwin street')
INSERT INTO VENTES (Nom,Prenom,Coordonnées,Adresse,Adresse_electronique) VALUES('Ngoma','Christopher','647-470-2250','79 Gridwood street') 
INSERT INTO VENTES (Nom,Prenom,Coordonnées,Adresse,Adresse_electronique) VALUES('Green','Desmond',647-270-2550,'57 Combermere drive',ngoma)
INSERT INTO VENTES (Nom,Prenom,Coordonnées,Adresse,Adresse_electronique) VALUES('Moe','Roger','647-547-5957,'101 Combermere drive')

-- donnees prix_location
INSERT INTO VENTES (Nom,Prenom,Coordonnées,Adresse,Adresse_electronique) VALUES('Kouta','Auriane','647-648-5657,'22 Garden avenue east')
INSERT INTO VENTES (Nom,Prenom,Coordonnées,Adresse,Adresse_electronique) VALUES('Batchi','Ezechiel','647-250-8987','123 Baldwin street')
INSERT INTO VENTES (Nom,Prenom,Coordonnées,Adresse,Adresse_electronique) VALUES('Ngoma','Christopher','647-470-2250','79 Gridwood street') 
INSERT INTO VENTES (Nom,Prenom,Coordonnées,Adresse,Adresse_electronique) VALUES('Green','Desmond',647-270-2550,'57 Combermere drive',ngoma)
INSERT INTO VENTES (Nom,Prenom,Coordonnées,Adresse,Adresse_electronique) VALUES('Moe','Roger','647-547-5957,'101 Combermere drive')
