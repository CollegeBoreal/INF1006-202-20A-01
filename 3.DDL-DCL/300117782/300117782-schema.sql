-- Ma DATABASE
CREATE DATABASE Restaurant_Mamamiya;

-- CRÉER L'UTILISATEUR (Erna) ET SON MOT DE PASSE (password)
CREATE USER 'Erna'@'%' IDENTIFIED BY 'password';

-- DONNER TOUT LES PRIVILÈGES À L'UTILISATEUR Erna
GRANT ALL ON Restaurant_Mamamiya.* TO 'Erna'@'%';

-- ACCÉDER À MA DATABASE 
USE Restaurant_Mamamiya;

-- Creation de la table plats

CREATE TABLE PLATS (
plat INT AUTO_INCREMENT NOT NULL,
Nom_du_plat VARCHAR(30) NOT NULL,
Montant INT (40) NULL,
PRIMARY KEY (plat)
);

-- creation de la table Menu

CREATE TABLE MENUS (
menu INT AUTO_INCREMENT NOT NULL,
Nom_du_menu VARCHAR(25) NOT NULL,
plat INT,  
PRIMARY KEY (menu),
FOREIGN KEY (plat) REFERENCES PLATS (plat)  
);

-- creation de la table commande

CREATE TABLE COMMANDES (
commande INT AUTO_INCREMENT NOT NULL,
Date_et_heure_de_commande DATETIME NOT NULL,
menu INT,
PRIMARY KEY (commande, menu),
FOREIGN KEY (menu) REFERENCES MENUS(menu)
); 
--creation de la table ingredient

CREATE TABLE INGREDIENTS (
ingredient INT AUTO_INCREMENT NOT NULL,
Nom_ingredient VARCHAR(20) NOT NULL,
menu INT,
plat INT,
PRIMARY KEY (ingredient, plat, menu),
FOREIGN KEY (plat) REFERENCES PLATS (plat),
FOREIGN KEY (menu) REFERENCES MENUS (menu)
);

  -- creation de la table client

CREATE TABLE CLIENTS (
client INT AUTO_INCREMENT NOT NULL,
Nom TEXT(25) NOT NULL,
commande INT,
PRIMARY KEY (client, commande),
FOREIGN KEY (commande) REFERENCES COMMANDES (commande)
);
  
   -- creation de la table facture
   
CREATE TABLE FACTURES(
facture INT AUTO_INCREMENT NOT NULL,
Montant INT(100) NULL,
Quantites INT(20) NULL,
client INT,
commande INT,
PRIMARY KEY (facture, client, commande),
FOREIGN KEY (client) REFERENCES CLIENTS (client),
FOREIGN KEY (commande) REFERENCES COMMANDES (commande)
);
  -- creation de la table paiement

CREATE TABLE PAIEMENTS(
paiement INT NOT NULL,
Montant FLOAT(200,00) NULL,
Date_et_heure_de_Paiement DATETIME NOT NULL,
client INT,
facture INT,
commande INT,
FOREIGN KEY (client) REFERENCES CLIENTS (client),
FOREIGN KEY (facture) REFERENCES FACTURES (facture)
);

