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
Prenom(s) VARCHAR(35) NOT NULL,
Coordonnees VARCHAR(13) NOT NULL,
Addresse VARCHAR(39) NOT NULL,
Addresse_electronique VARCHAR(50)
PRIMARY KEY (fournisseur)
FOREIGN KEY (produit) REFERENCES PRODUITS(produit)

);

-- Ma table CLIENTS
CREATE TABLE CLIENTS(
client INT AUTO_INCREMENT,
Nom(s) VARCHAR(35) NOT NULL,
Prenom(s) VARCHAR(35) NOT NULL,
Coordonnees VARCHAR(13) NOT NULL,
Addresse VARCHAR(39) NOT NULL,
Addresse_electronique VARCHAR(50) NOT NULL,
PRIMARY KEY (client)
);

-- Ma table VENTES
CREATE TABLE VENTES(
vente INT AUTO_INCREMENT,
Nom_du_produit VARCHAR(40) NOT NULL,
Date_et_heure_de_la_vente DATETIME NOT NULL, 
Date_et_heure_de_livraison DATETIME NOT NULL,
PRIMARY KEY (vente)
);



-- Ma table PRODUITS
CREATE TABLE PRODUITS(
produit INT AUTO_INCREMENT,
Nom_du_produit VARCHAR(20),
Numero_de_reference VARCHAR(30),
Prix_du_produit INT NOT NULL,
Type_du_produit VARCHAR(15)
PRIMARY KEY (produit),
FOREIGN KEY (location) REFERENCES LOCATIONS(location),
FOREIGN KEY (vente) REFERENCES VENTES(vente),
FOREIGN KEY (fournisseur) REFERENCES FOURNISSEURS(fournisseur)
);

-- Ma table LOCATIONS
CREATE TABLE LOCATIONS(
location INT AUTO_INCREMENT,
type_de_location
date_de_sortie,
date_de_retour,
PRIMARY KEY (location)
FOREIGN KEY (produit) REFERENCES PRODUITS(produit),
FOREIGN KEY (vente) REFERENCES VENTES(vente),
FOREIGN KEY (client) REFERENCES CLIENTS(client)
);

-- Ma table SERVICES_LOCATION
CREATE TABLE SERVICES_LOCATION(
service_location INT,
type_de_location VARCHAR(20) NOT NULL,
prix_de_la_location INT NOT NULL,
date_de_sortie DATETIME,
date_de_retour DATETIME
);
