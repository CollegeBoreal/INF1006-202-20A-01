INSERT INTO CLIENTS (Nom_Client,Address_Client,Tel_Client) VALUES ('Bertrand','7 Annable lane','6476552317');
INSERT INTO CLIENTS (Nom_Client,Address_Client,Tel_Client) VALUES ('Roger','660 cognac Crescent','6477687020');
INSERT INTO CLIENTS (Nom_Client,Address_Client,Tel_Client) VALUES ('Faith','9 Annable lane','6476552017');

-- Data Table FOURNISSEURS 
INSERT INTO FOURNISSEURS (Nom_Fournisseur,Address_Fournisseur,Tel_Fournisseur) VALUES ('Ontario Games','8 ajax ','6747682345');
INSERT INTO FOURNISSEURS (Nom_Fournisseur,Address_Fournisseur,Tel_Fournisseur) VALUES ('Premier Games','56 Pickering ','9747682945');
INSERT INTO FOURNISSEURS (Nom_Fournisseur,Address_Fournisseur,Tel_Fournisseur) VALUES ('Afrobiz','90 Ottawa ','5447682345');

-- Data TYPES ARCTICLES

INSERT INTO TYPESARTICLES (Nom_Type_Article) VALUES ('Accessoire');
INSERT INTO TYPESARTICLES (Nom_Type_Article) VALUES ('Console');
INSERT INTO TYPESARTICLES (Nom_Type_Article) VALUES ('Jeux');

-- Data table ARTICLES
INSERT INTO ARTICLES (Fournisseur,Nom_Article,Type_Article,quantite_Stock) VALUES (1,'PS4',2,'60');
INSERT INTO ARTICLES (Fournisseur,Nom_Article,Type_Article,quantite_Stock) VALUES (2,'Moniteur 32P',1,'15');
INSERT INTO ARTICLES (Fournisseur,Nom_Article,Type_Article,quantite_Stock) VALUES (3,'Manette Ps4',1,'60');
INSERT INTO ARTICLES (Fournisseur,Nom_Article,Type_Article,quantite_Stock) VALUES (3,'Fifa2020',3,'60');
INSERT INTO ARTICLES (Fournisseur,Nom_Article,Type_Article,quantite_Stock) VALUES (3,'Warios',3,'60');
INSERT INTO ARTICLES (Fournisseur,Nom_Article,Type_Article,quantite_Stock) VALUES (3,'Mario',3,'60');


-- Data TYPES DE SERVICES 
INSERT INTO TYPESDESERVICES (nom_du_Service) VALUES ('Vente' );
INSERT INTO TYPESDESERVICES (nom_du_Service) VALUES ('location');
INSERT INTO TYPESDESERVICES (nom_du_Service) VALUES ('depanage');

-- Data SERVICES
INSERT INTO SERVICES  VALUES (1,1,1,'5000',3,'2020/3/30');
INSERT INTO SERVICES  VALUES (2,3,1,'5000',3,'2020/3/30');
INSERT INTO SERVICES  VALUES (2,2,3,'5000',3,'2020/45');
INSERT INTO SERVICES  VALUES (2,3,3,'24000',3,'2020/7/10');


