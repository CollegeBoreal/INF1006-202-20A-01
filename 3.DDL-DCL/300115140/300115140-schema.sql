
-- *********************************
-- Création de ma DATABASE
-- *********************************

CREATE DATABASE IF NOT EXISTS ETREBIEN;

--*********************************
-- Donner les autorisations
--*********************************
CREATE USER IF NOT EXISTS 'zack'@'%' IDENTIFIED BY 'password';
GRANT ALL ON ETREBIEN.* TO 'zack'@'%';

USE ETREBIEN;

-- *********************************
--  Création des TABLES 
-- ********************************

CREATE TABLE FOURNISSEURS (
  fournisseur INT AUTO_INCREMENT,
  Nom VARCHAR(20) NOT NULL,
  Adresse VARCHAR(35),
  Telephone INT NOT NULL,
  Nature_du_fournisseur VARCHAR(15),
  PRIMARY KEY(fournisseur)
  );


CREATE TABLE CLIENTS (
  client INT AUTO_INCREMENT,
  Nom VARCHAR(20) NOT NULL,
  Prenom VARCHAR(20),
  Adresse VARCHAR(35),
  Code_postale VARCHAR (10),
  Telephone VARCHAR(10) NOT NULL,
  PRIMARY KEY(client)
  );



CREATE TABLE VENTES (
  vente INT AUTO_INCREMENT,
  client INT,
  produit VARCHAR (15),
  Prix INT NOT NULL,
  Date_de_vente DATE,
  PRIMARY KEY(produit, client, date),
  FOREIGN KEY(client, poduit)
     REFERENCES CLIENTS(client)
  );
  
  
  
 CREATE TABLE PRODUITS (
   produit INT AUTO_INCREMENT,
   client INT,
   Nom_du_produit VARCHAR(15) NOT NULL,
   fournisseur VARCHAR(20),
   PRIMARY KEY(produit),
   FOREIGN KEY(client)
      REFERENCES CLIENTS(client)
   );
   
  CREATE TABLE SERVICES (
    service INT AUTO_INCREMENT,
    fournisseur INT, 
    Nom_du_service VARCHAR(15) NOT NULL,
    PRIMARY KEY(service),
    FOREIGN KEY(fournisseur)
       REFERENCES FOURNISSEURS(fournisseur)
    );
   
  



