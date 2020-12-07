
-- *********************************
-- Création de ma DATABASE
-- *********************************

CREATE DATABASE IF NOT EXISTS ETREBIEN;

-- *********************************
-- Donner les autorisations
-- *********************************
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
  Code_postal VARCHAR (10),
  Telephone VARCHAR(10) NOT NULL,
  PRIMARY KEY(client)
  );


CREATE TABLE PRODUITS (
  produit INT AUTO_INCREMENT,
  Nom_du_produit VARCHAR(15) NOT NULL,
  fournisseur INT,
  PRIMARY KEY(produit),
  FOREIGN KEY (fournisseur)
     REFERENCES FOURNISSEURS(fournisseur)
  );


CREATE TABLE SERVICES (
  service INT AUTO_INCREMENT,
  fournisseur INT, 
  Nom_du_service VARCHAR(15) NOT NULL,
  PRIMARY KEY(service),
  FOREIGN KEY(fournisseur)
     REFERENCES FOURNISSEURS(fournisseur)
  );


CREATE TABLE VENTES_DE_SERV (
  vente_de_serv INT AUTO_INCREMENT,
  client INT,
  Prix INT NOT NULL,
  Date_de_vente DATE,
  service INT,
  PRIMARY KEY(vente_de_serv, client, service),
  FOREIGN KEY(client)
     REFERENCES CLIENTS(client),
  FOREIGN KEY(service)
     REFERENCES SERVICES(service)
  );
  
  
CREATE TABLE VENTES_DE_PROD (
  vente_de_prod INT AUTO_INCREMENT,
  client INT,
  produit INT,
  Prix INT NOT NULL,
  Date_de_vente DATE UNIQUE,
  PRIMARY KEY(vente_de_prod, client, produit),
  CONSTRAINT uc_client_produit UNIQUE (client, produit),
  FOREIGN KEY(client)
     REFERENCES CLIENTS(client),
  FOREIGN KEY(produit)
     REFERENCES PRODUITS(produit)
  );
  
  

   

   
  



