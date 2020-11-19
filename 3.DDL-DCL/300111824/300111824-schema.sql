
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
  PRIMARY KEY(fournisseur)
  );
 
 
 CREATE TABLE CLIENTS_DETAIL (
   client_detail INT AUTO_INCREMENT,
   Telephone INT,
   produit INT, 
   fournisseur INT, 
   PRIMARY KEY(client_detail)
   );
   
   
   CREATE TABLE CLIENTS_GROS (
   client_gros INT AUTO_INCREMENT,
   Nom VARCHAR(10) NOT NULL,
   Prenom VARCHAR(10),
   Adresse VARCHAR(30),
   Telephone INT NOT NULL,
   fournisseur INT,
   PRIMARY KEY(client_gros, fournisseur),
   FOREIGN KEY (fournisseur)
      REFERENCES FOURNISSEURS (fournisseur)
   );
 
  CREATE TABLE PRODUITS_GROS (
   produit_gros INT AUTO_INCREMENT,
   Nom VARCHAR(10),
   client_gros INT,
   Fournisseur INT,
   PRIMARY KEY(produit_gros, client_gros, fournisseur),
   FOREIGN KEY(client_gros)
      REFERENCES CLIENTS_GROS(client_gros),
   FOREIGN KEY(fournisseur)
      REFERENCES FOURNISSEURS (fournisseur)
   );
  
  
CREATE TABLE PRODUITS_DETAIL (
   produit_detail INT AUTO_INCREMENT,
   Nom VARCHAR(10),
   client_detail INT,
   Fournisseur INT,
   PRIMARY KEY(produit, client, fournisseur)
   FOREIGN KEY(client)
      REFERENCES CLIENTS_DETAIL(client_detail),
   FOREIGN KEY(frounisseur)
      REFERENCES FOURNISSEURS (fournisseur)
   );
     
  
     
     
  CREATE TABLE VENTES (
    vente INT AUTO_INCREMENT,
    produit_gros INT,
    produit_detail INT,
    Prix INT NOT NULL,
    Date_et_heure DATE NOT NULL,
    PRIMARY KEY(vente, produit_gros, produit_detail),
    FOREIGN KEY(produit_gros)
       REFERENCES PRODUITS_GROS(produit_gros),
    FOREIGN KEY(produit_detail)
       REFERENCES PRODUITS_DETAIL(produit_detail)
    );





