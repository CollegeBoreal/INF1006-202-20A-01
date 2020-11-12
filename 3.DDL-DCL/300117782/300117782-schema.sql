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
Montant INT (40,00) NULL,
PRYMARY KEY (plat)
);

--cretion de la table ingrediEns

CREATE TABLE INGREDEINTS (
ingredent INT AUTO_INCEMENT NOT NULL,
Nom_de_l'ingredient VARCHAR (20) NOT NULL,
PRYMARY KEY (ingredient)
FOREIGN KEY (plats) REFERENCES PLATS (plat)
FIREIGN KEY (menu) REFERENCES INGREDIENTS (menu)
);

-- creation de la table Menu

CREATE TABLE MENUS (
menu INT AUTO_INCREMENT NOT NULL,
Nom_du_menu VARCHAR(25) NOT NULL,
PRIMARY KEY (menu) 
);
  
  -- creation de la table commande

CREATE TABLE COMMANDES (
commande INT AUTO_INCREMENT NOT NULL,
Date_et_heure_de_commande DATETIME NOT NULL,
menu INT,
PRIMARY KEY (commande),
FOREIGN KEY (menu) REFERENCES MENUS(menu)
); 
  
  -- creation de la table client

CREATE TABLE CLIENTS (
client INT AUTO_INCREMENT NOT NULL,
Nom TEXT(25) NOT NULL,
commande INT,
PRIMARY KEY (client),
FOREIGN KEY (commande) REFERENCES COMMANDES (commande)
);
  
  -- creation de la table paiement

CREATE TABLE PAIEMENTS(
paiement INT NOT NULL,
Montant FLOAT(100) NULL,
Date_et_heure_de_Paiement DATETIME NOT NULL,
client INT,
facture INT,
commande INT,
FOREIGN KEY (client) REFERENCES CLIENTS (client),
FOREIGN KEY (facture) REFERENCES FACTURES (facture),
FOREIGN KEY (commande) REFERENCES COMMANDES (commande)
);
  
  -- creation de la table facture

CREATE TABLE FACTURES(
facture INT AUTO_INCREMENT NOT NULL,
Montant INT(100) NULL,
Quantites INT(20) NULL,
Client INT,
ommande INT,
PRIMARY KEY (facture),
FOREIGN KEY (client) REFERENCES CLIENTS (client),
FOREIGN KEY (commande) REFERENCES COMMANDES (commande)
);

