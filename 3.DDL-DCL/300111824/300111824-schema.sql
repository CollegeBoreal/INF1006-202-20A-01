
-- Etape de créer la base de données


CREATE DATABASE IF NOT EXISTS AGRICOLE

CREATE USER IF NOT EXISTS 'blevie'@'%' IDENTIFIED BY 'password';
GRANT ALL ON AGRICOLE.* TO 'blevie'@'%';

USE AGRICOLE;


-- Les tables

CREATE TABLE FOURNISSEURS (
  fournisseur INT AUTO_INCREMENT,
  Nom VARCHAR(10) NOT NULL,
  Adresse VARCHAR(30),
  Telephone INT,
  PRIMNARY KEY(fournisseur)
  );
  
  
 CREATE TABLE CLIENTS (
   client INT AUTO_INCREMENT,
   Nom VARCHAR(10) NOT NULL,
   Prenom VARCHAR(10),
   Adresse VARCHAR(30),
   Telephone INT NOT NULL,
   PRIMARY KEY(client)
   );
   
   
   CREATE TABLE PRODUITS (
     produit INT AUTO_INCREMENT,
     Nom VARCHAR(10),
     Client INT,
     Fournisseur VARCHAR(10),
     PRIMARY KEY(produit)
     );
     
     
  





