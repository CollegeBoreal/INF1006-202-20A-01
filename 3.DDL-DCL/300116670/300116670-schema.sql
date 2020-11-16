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

-- Ma table FOURNISSEURS
CREATE TABLE FOURNISSEURS(
fournisseur INT AUTO_INCREMENT,
Nom VARCHAR(35) NOT NULL,
Coordonnees VARCHAR(13) NOT NULL,
Addresse VARCHAR(39) NOT NULL,
Addresse_electronique VARCHAR(50)
PRIMARY KEY (fournisseur)
);

-- Ma table CLIENTS
CREATE TABLE CLIENTS(
client INT AUTO_INCREMENT,
Nom VARCHAR(35) NOT NULL,
Coordonnees VARCHAR(13) NOT NULL,
Addresse VARCHAR(39) NOT NULL,
Addresse_electronique VARCHAR(50) NOT NULL,
PRIMARY KEY (client)
);

-- Ma table VENTES
CREATE TABLE VENTES(
vente INT AUTO_INCREMNT,
Nom_du_produit VARCHAR(40) NOT NULL,
Date_et_heure_de_la_vente DATETIME NOT NULL, 
Date_et_heure_de_livraison DATETIME NOT NULL,
PRIMARY KEY (vente)
);



-- Ma table PRODUITS
CREATE TABLE PRODUITS(
Nom_du_produit 


