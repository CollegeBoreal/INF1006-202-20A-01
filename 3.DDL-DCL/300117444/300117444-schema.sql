-- Mon domaine
CREATE DATABASE IF NOT EXISTS kabylie;

-- Mon nom  dutilisateur

CREATE USER IF NOT EXISTS 'idir'@'%' IDENTIFIED BY 'kabylie';
GRANT ALL ON wydad.* TO 'kabylie'@'%';

-- selectionner la base de donnees
use kabylie;

-- Mes Tables

CREATE TABLE FOURNISSEURS(
    id INT PRIMARY KEY NOT NULL,
    nom VARCHAR(100),
    prenom VARCHAR(100),
    email VARCHAR(255),
    date_naissance DATE,
    pays VARCHAR(255),
    ville VARCHAR(255),
    code_postal VARCHAR(5),
    nombre_achat INT
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
  
  SELECT DISTINCT CLIENT.C#
     FROM COMMANDE, FOURNISSEUR, CLIENT
     WHERE COMMANDE.F# = FOURNISSEUR.F#
     AND COMMANDE.C# = CLIENT.C#
     AND CLIENT.VILLE <> FOURNISSEUR.VILLE;
     
      -- creation de la table produit
     
 CREATE TABLE PRODUITS (
   produit INT AUTO_INCREMENT,
   client INT,
   Nom_du_produit VARCHAR(15) NOT NULL,
   fournisseur VARCHAR(20),
   PRIMARY KEY(produit),
   FOREIGN KEY(client)
      REFERENCES CLIENTS(client)
   );
   
      
   -- creation de la table commande 
    
     CREATE TABLE commande (
Id_commande INT AUTO_INCREMENT NOT NULL,
Date_et_heure_de_commande DATETIME NOT NULL,
Id_Menu INT,
PRIMARY KEY (Id_commande),
FOREIGN KEY (Id_Menu) REFERENCES Menu (Id_Menu)
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
