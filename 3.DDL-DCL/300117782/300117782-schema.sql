-- Ma DATABASE
CREATE DATABASE Restaurant_Mamamiya;

-- CRÉER L'UTILISATEUR (Erna) ET SON MOT DE PASSE (password)
CREATE USER 'Erna'@'%' IDENTIFIED BY 'password';

-- DONNER TOUT LES PRIVILÈGES À L'UTILISATEUR Erna
GRANT ALL ON Restaurant_Mamamiya.* TO 'Erna'@'%';

-- ACCÉDER À MA DATABASE 
USE Restaurant_Mamamiya;

-- Creation de la table plat

CREATE TABLE PLATS (
plat INT AUTO_INCREMENT NOT NULL,
Nom_du_plat VARCHAR(30) NOT NULL,
Montant INT (40) NULL,
PRIMARY KEY (plat)
);

-- creation de la table ingredient

  CREATE TABLE INGREDIENTS (
  ingredient INT NOT NULL AUTO_INCREMENT,
  Nom_ingredient VARCHAR(20) NOT NULL,
  PRIMARY KEY (ingredient)
);

-- creation de la table recette
  CREATE TABLE RECETTES (
  recette INT NOT NULL AUTO_INCREMENT,
  Nom_du_recette VARCHAR(25) NOT NULL,
  ingredient INT NOT NULL,
  PRIMARY KEY (recette, INGREDIENTS_ingredient),
  FOREIGN KEY (INGREDIENTS_ingredient)
  );

-- creation de la table commande

  CREATE TABLE COMMANDES (
  commande INT NOT NULL AUTO_INCREMENT,
  Date_et_heure_de_commande DATETIME NOT NULL,
  plat INT NOT NULL,
  PRIMARY KEY (commande, plat),
  FOREIGN KEY (plat)
  );
  
   -- creation de la table client
  
  CREATE TABLE CLIENTS (
  client INT NOT NULL AUTO_INCREMENT,
  Nom TINYTEXT NOT NULL,
  commande INT NOT NULL,
  PRIMARY KEY (client, commande),
  FOREIGN KEY (commande)
  );
    
  -- creation de le table facture
 
  CREATE TABLE FACTURES (
  facture INT NOT NULL AUTO_INCREMENT,
  montant INT NULL DEFAULT NULL,
  quantites INT NULL DEFAULT NULL,
  PRIMARY KEY (facture)
  );

  -- creation de la table paiement
  
  CREATE TABLE PAIEMENTS (
  paiement INT NOT NULL,
  montant FLOAT NULL DEFAULT NULL,
  Date_et_heure_de_Paiement DATETIME NOT NULL,
  client INT NULL DEFAULT NULL,
  facture INT NULL DEFAULT NULL,
  commande INT NULL DEFAULT NULL,
  FOREIGN KEY (client)
  FOREIGN KEY (facture)
  );
      
    
    

