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


CREATE TABLE CLIENTS (
  client INT AUTO_INCREMENT,
  Nom VARCHAR(20) NOT NULL,
  Prenom VARCHAR(20) NOT NULL,
  Adresse VARCHAR (30) NOT NULL,
  Telephone INT NOT NULL, 
  produit INT,
  PRIMARY KEY (client),
  FOREIGN KEY (produit) REFERENCES PRODUITS(produit)
  );
  
  
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
    PRIMARY KEY (produit, fournisseurs),
    FOREIGN KEY (fournisseurs) REFERENCES FOURNISSEURS(fournisseurs)
     );
      
  CREATE TABLE VENTES (
   ventes INT AUTO_INCREMENT,
   Nom VARCHAR(20)
   Prix INT,
   Date DATE,
   client VARCHAR(20),
   PRIMARY KEY (ventes, client),
   FOREIGN KEY (client) REFERENCES CLIENTS(client)
   );
   
   
      
  
  
  






