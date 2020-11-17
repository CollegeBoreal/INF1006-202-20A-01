-- Mon domaine
CREATE DATABASE IF NOT EXISTS wydad;

-- Mon utilisateur

CREATE USER IF NOT EXISTS 'fadde'@'%' IDENTIFIED BY 'wydad_1';
GRANT ALL ON wydad.* TO 'fadde'@'%';

-- selectionner la base de donnees
use wydad;

-- Mes Tables

CREATE TABLE FOURNISSEURS (
fournisseur INT AUTO_INCREMENT,
Nom_du_fournisseur VARCHAR(25) NOT NULL,
Numero_de_telephone INT NOT NULL,
Email VARCHAR(25) NULL,
Adresse VARCHAR(25) NULL,
PRIMARY KEY(fournisseur)
);

  -- creation de la table client
  
CREATE TABLE CLIENTS (
  client INT AUTO_INCREMENT,
  Nom VARCHAR(20) NOT NULL,
  Prenom VARCHAR(20),
  Adresse VARCHAR(35),
  Code_postale VARCHAR (10),
  Telephone VARCHAR(10) NOT NULL,
  PRIMARY KEY(client)
  );
  
  
      -- creation de la table produit
      
CREATE TABLE PRODUITS(
produit INT AUTO_INCREMENT,
Nom_du_produit VARCHAR(25) NOT NULL,
Numero_de_reference VARCHAR(25),
Date_de_peremption DATE DEFAULT NULL,
fournisseur INT,
PRIMARY KEY (produit, fournisseur),
FOREIGN KEY (fournisseur) REFERENCES FOURNISSEURS
(fournisseur)
 );

   
      
   -- creation de la table commande 
    
CREATE TABLE COMMANDES(
commande INT AUTO_INCREMENT,
Date_de_commande DATE DEFAULT NULL,
Date_et_heure_de_livraison DATETIME,
quantite INT NOT NULL,
produit INT,
PRIMARY KEY (commande, produit),
FOREIGN KEY (produit) REFERENCES PRODUITS (produit)
); 

  -- creation de la table prix     
     
     CREATE TABLE prix(
Id_prix INT AUTO_INCREMENT NOT NULL,
Montant INT(100) NULL,
Quantites INT(20) NULL,
Id_client INT,
Id_commande INT,
PRIMARY KEY (Id_prix),
FOREIGN KEY (Id_client) REFERENCES client (Id_client),
FOREIGN KEY (Id_commande) REFERENCES commande (Id_commande)
);
