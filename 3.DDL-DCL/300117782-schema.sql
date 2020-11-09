-- Ma DATABASE
CREATE DATABASE Restaurant_Mamamiya;

-- CRÉER L'UTILISATEUR (Erna) ET SON MOT DE PASSE (password)
CREATE USER 'Erna'@'%' IDENTIFIED BY 'password';

-- DONNER TOUT LES PRIVILÈGES À L'UTILISATEUR Erna
GRANT ALL ON Restaurant_Mamamiya.* TO 'Erna'@'%';

-- ACCÉDER À MA DATABASE 
USE Restaurant_Mamamiya;

-- creation de la table Menu

CREATE TABLE Menu (
Id_menu INT AUTO_INCREMENT NOT NULL,
Nom_du_Menu VARCHAR(25) NOT NULL,
PRIMARY KEY(Id_Menu)
  
  -- creation de la table commande

CREATE TABLE commande (
Id_commande INT AUTO_INCREMENT NOT NULL,
Date_et_heure_de_commande DATETIME NOT NULL,
Id_Menu INT,
PRIMARY KEY (Id_commande),
FOREIGN KEY (Id_Menu) REFERENCES Menu (Id_Menu)
); 
  
  -- creation de la table client

CREATE TABLE client (
Id_client INT AUTO_INCREMENT NOT NULL,
Nom TEXT(25) NOT NULL,
Id_commande INT,
PRIMARY KEY (Id_client),
FOREIGN KEY (Id_commande) REFERENCES commande (Id_commande)
);
  
  -- creation de la table paiement

CREATE TABLE paiement(
Id_paiement INT NOT NULL,
Montant FLOAT(100) NULL,
Date_et_heure_de_Paiement DATETIME NOT NULL,
Id_client INT,
Id_facture INT,
Id_commande INT,
FOREIGN KEY (Id_client) REFERENCES client (Id_client),
FOREIGN KEY (Id_facture) REFERENCES facture (Id_facture),
FOREIGN KEY (Id_commande) REFERENCES commande (Id_commande)
);
  
  -- creation de la table facture

CREATE TABLE facture(
Id_facture INT AUTO_INCREMENT NOT NULL,
Montant INT(100) NULL,
Quantites INT(20) NULL,
Id_client INT,
Id_commande INT,
PRIMARY KEY (Id_facture),
FOREIGN KEY (Id_client) REFERENCES client (Id_client),
FOREIGN KEY (Id_commande) REFERENCES commande (Id_commande)
);

  
