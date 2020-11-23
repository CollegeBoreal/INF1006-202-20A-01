-- *********************************
-- Création de ma DATABASE
-- *********************************
CREATE IF NO EXISTS DATABASE MOTOSPORT;


-- *********************************
-- Creation des utilisateurs et don-
-- ner les autorisations
-- *********************************
CREATE IF NO EXISTS USER 'Auriane'@'%' IDENTIFIED BY 'password';
GRANT ALL ON MOTOSPORT.* TO 'Auriane'@'%';


-- *********************************
-- CREATION DES TABLES
-- *********************************

CREATE TABLE PRODUITS(
produit INT AUTO_INCREMENT,
Nom_du_produit VARCHAR(20),
Numero_de_reference VARCHAR(30),
Prix_du_produit INT NOT NULL,
Type_du_produit VARCHAR(15),
PRIMARY KEY (produit),
FOREIGN KEY (fourniseur) REFERENCES FOURNISSEURS(fournisseur)
);

CREATE TABLE FOURNISSEURS(
fournisseur INT AUTO_INCREMENT,
Nom VARCHAR(35) NOT NULL,
Coordonnees VARCHAR(13) NOT NULL,
Addresse VARCHAR(39) NOT NULL,
PRIMARY KEY (fournisseur)
);

CREATE TABLE CLIENTS(
client INT AUTO_INCREMENT,
Nom VARCHAR(35) NOT NULL,
Prenom VARCHAR(35) NOT NULL,
Coordonnees VARCHAR(13) NOT NULL,
Addresse VARCHAR(39) NOT NULL,
Addresse_electronique VARCHAR(50) NOT NULL,
PRIMARY KEY (client),
FOREIGN KEY (vente) REFERENCES VENTES(vente),
FOREIGN KEY (produit) REFERENCES PRODUITS(produit)
);


CREATE TABLE VENTES(
vente INT AUTO_INCREMENT,
Nom_du_produit VARCHAR(40) NOT NULL,
Date_et_heure_de_la_vente DATETIME NOT NULL, 
Date_et_heure_de_livraison DATETIME NOT NULL,
PRIMARY KEY (vente),
FOREIGN KEY (produit) REFERENCES PRODUITS(produit)
);

CREATE TABLE LOCATIONS(
location INT AUTO_INCREMENT,
type_de_location INT AUTO_INCREMENT,
PRIMARY KEY (location),
FOREIGN KEY (vente) REFERENCES VENTES(vente),
FOREIGN KEY (client) REFERENCES CLIENTS(client)
);




CREATE TABLE SERVICES_LOCATIONS(
service_location INT AUTO_INCREMENT,
client INT, 
type_de_location VARCHAR(20) NOT NULL,
prix_de_la_location INT NOT NULL,
date_de_sortie DATETIME,
date_de_retour DATETIME,
PRIMARY KEY(service_location)
);
