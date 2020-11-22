==============================================
 --   ma base de donnees DJIB_12
 CREATE DATABASE DJIB_12;
 USE DJIB_12;
 -- creation d'utilisateur
 CREATE USER 'amirali11'@'%' IDENTIFIED BY 'Password';
 -- donne tous les privilegies utilisateur a amirali11
 GRANT ALL ON DJIB_12.* TO 'amirali11'@'%';
==============================================
--Table employe 
===============================================

CREATE TABLE TABLES_EMPLOYEES 
(
  Table_employee int AUTO_INCREMENT ,
  Prenom varchar(45) NOT NULL,
  Nom varchar(45) NOT NULL,
  Poste varchar(45)  NULL,
  Bureau varchar(45)  NULL,
  Salaire INT NOT NULL,
  Commission INT  NULL,
  Embauche DATE DEFAULT NULL ,
  PRIMARY KEY (Table_employee) 
);
============================================================
--Table fournisseur 
=============================================================
CREATE TABLE FOURNISSEURS
 (
  fournisseur INT AUTO_INCREMENT,
  Nom VARCHAR(45)  NULL,
  Adresse VARCHAR(45) NOT NULL,
  Telephone INT NOT NULL,
  Interlocuteur VARCHAR(45)  NULL,
  Delai_livraison DATE DEFAULT NULL,
  Table_employee INT,
  PRIMARY KEY (fournisseur, Table_employee),
  FOREIGN KEY (Table_employee ) REFERENCES TABLES_EMPLOYEES  (table_employee)
  );
=================================================================
--Table Produits 
=================================================================
CREATE TABLE TABLES_PRODUITS 
(
  table_produit INT AUTO_INCREMENT ,
  nom_produit VARCHAR(45) NOT NULL,
  prix INT NULL,
  fournisseur INT,
  PRIMARY KEY (table_produit, fournisseur ) ,
  FOREIGN KEY (fournisseur) REFERENCES FOURNISSEURS (fournisseur )
 
  );
  
  
  
  ====================================================
  -- Table clients
  ====================================================
  CREATE TABLE CLIENTS
(
table_client INT AUTO_INCREMENT, 
nom varchar (45) NULL,
prenom varchar (45) NULL,
addresse varchar (45) NULL,
ville varchar (45) NULL,
telephone INT  NOT NULL,
postecode varchar (45) NOT NULL,
table_produit INT, 
PRIMARY KEY (table_client),
FOREIGN KEY (table_produit) REFERENCES TABLES_PRODUITS (table_produit)
  );
  
