--**************
-- CREATION DE DATABASE
--***************

CREATE DATABASE SKINCARE;

--**************************
-- Autorisation et Utilisateur
--**************************

 CREATE USER 'hassana'@'%' IDENTIFIED BY 'password';
 GRANT ALL ON SKINCARE.* TO 'hassana'@'%';

USE SKINCARE;

-- **********************
-- Mes tables
-- **********************


 CREATE TABLE FOURNISSEURS (
   fournisseurs INT AUTO_INCREMENT,
   Nom VARCHAR(20),
   Adresse VARCHAR(30),
   Telephone INT,
   Type_de_societe VARCHAR(20),
   PRIMARY KEY (fournisseurs )
   );
   
   
     
  CREATE TABLE PRODUITS (
    produit INT AUTO_INCREMENT,
    Nom VARCHAR(20),
    Marque VARCHAR(20),
    Prix INT,
    fournisseurs INT,
    PRIMARY KEY (produit),
    FOREIGN KEY (fournisseurs) REFERENCES FOURNISSEURS(fournisseurs)
     );
   
   

CREATE TABLE CLIENTS (
  client INT AUTO_INCREMENT,
  Nom VARCHAR(20) NOT NULL,
  Prenom VARCHAR(20) NOT NULL,
  Adresse VARCHAR (30) NOT NULL,
  Telephone INT NOT NULL, 
  produit INT,
  Age INT, 
  PRIMARY KEY (client),
  FOREIGN KEY (produit) REFERENCES PRODUITS(produit)
  );
  
  

  
  
      
  CREATE TABLE VENTES (
   ventes INT AUTO_INCREMENT,
   Nom VARCHAR(20)
   Prix INT,
   Date DATE,
   PRIMARY KEY (ventes)
   );
   
   CREATE TABLE PAIEMENTS (
   paiement INT AUTO_INCREMENT,
   client INT,
   Produit INT,
   Montant INT,
   Date_PAIEMENT DATE,
   PRIMARY KEY(paiement),
   FOREIGN KEY(produit)
      REFERENCES PRODUITS(produit),
   FOREIGN KEY(client)
      REFERENCES CLIENTS(client)
    );
      
  
  
  






