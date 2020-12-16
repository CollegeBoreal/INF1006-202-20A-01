-- *********************************
-- Création de ma DATABASE
-- *********************************
CREATE DATABASE IF NOT EXISTS MOTOSPORT;


-- *********************************
-- Creation des utilisateurs et don-
-- ner les autorisations
-- *********************************
CREATE USER IF NOT EXISTS 'Auriane'@'%' IDENTIFIED BY 'Auriane';
GRANT ALL ON MOTOSPORT.* TO 'Auriane'@'%';
USE MOTOSPORT;


-- *********************************
-- CREATION DES TABLES
-- *********************************

Nom VARCHAR(35) NOT NULL,
Coordonnees VARCHAR(13) NOT NULL,
Addresse VARCHAR(39) NOT NULL,
PRIMARY KEY (fournisseur)
);

CREATE TABLE PRODUITS(
produit INT AUTO_INCREMENT,
fournisseur INT,
Nom_du_produit VARCHAR(20),
Prix_du_produit INT NOT NULL,
PRIMARY KEY (produit),
FOREIGN KEY (fournisseur) REFERENCES FOURNISSEURS(fournisseur)
);

CREATE TABLE CLIENTS(
client INT AUTO_INCREMENT,
Nom VARCHAR(35) NOT NULL,
Prenom VARCHAR(35) NOT NULL,
Coordonnees VARCHAR(13) NOT NULL,
Addresse VARCHAR(39) NOT NULL,
Addresse_electronique VARCHAR(50) NOT NULL,
PRIMARY KEY (client),
UNIQUE INDEX `Adresse_electronique_UNIQUE` (`Adresse_electronique` ASC)
);


CREATE TABLE VENTES(
vente INT AUTO_INCREMENT,
client INT,
produit INT,
quantite INT CHECK(quantite <> 0),
Date_et_heure_de_la_vente DATETIME NOT NULL, 
Date_et_heure_de_livraison DATETIME NOT NULL,
PRIMARY KEY (vente,client,produit),
FOREIGN KEY (produit) REFERENCES PRODUITS(produit),
FOREIGN KEY (client) REFERENCES CLIENTS(client),
CONSTRAINT quantite_nonzero CHECK (quantite <> 0)
);


CREATE TABLE LOCATIONS(
location INT AUTO_INCREMENT,
produit INT,
prix_location INT,
PRIMARY_KEY (location),
FOREIGN KEY (produit) REFERENCES PRODUITS(produit)
);

CREATE TABLE PRIX_LOCATIONS(
prix_location INT AUTO_INCREMENT,
location,
PRIMARY_KEY (prix_location)
);

  
CREATE TABLE SERVICE(
service INT AUTO_INCREMENT,
client INT,
quantite INT,
location INT,
prix_location,
date_de_sortie DATETIME NOT NULL,
date_de_retour DATETIME DEFAULT NULL,
PRIMARY_KEY(service_location,client,prix_location),
FOREIGN KEY(client) REFERENCES CLIENTS(client),
FOREIGN KEY(location) REFERENCES LOCATIONS(location);
);






