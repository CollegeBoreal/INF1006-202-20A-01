-- *********************************
-- Création de ma DATABASE
-- *********************************
CREATE IF NO EXISTS DATABASE MOTOSPORT;


-- *********************************
-- Creation des utilisateurs et don-
-- ner les autorisations
-- *********************************
CREATE USER 'Auriane'@'%' IDENTIFIED BY 'password';
GRANT ALL ON MOTOSPORT.* TO 'Auriane'@'%';


-- *********************************
-- CREATION DES TABLES
-- *********************************

-- Ma table FOURNISSEURS
CREATE TABLE FOURNISSEURS(
fournisseur INT AUTO_INCREMENT,
Nom VARCHAR(35) NOT NULL,
Coordonnees  VARCHAR(13) NOT NULL,
Addresse VARCHAR(39) NOT NULL,
Addresse_electronique VARCHAR(50)
PRIMARY KEY (fournisseur)
);

-- Ma table COMMANDES
CREATE TABLE COMMANDES(
commande INT AUTO_INCREMNT,
Nom du produit VARCHAR(40) NOT NULL,
Date de la commande, 
Date de livraison,
PRIMARY KEY (commande)
);

-- Ma table CLIENTS
CREATE TABLE CLIENTS


