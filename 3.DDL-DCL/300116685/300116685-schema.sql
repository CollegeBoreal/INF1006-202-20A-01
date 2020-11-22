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
  Salaire varchar(45) NOT NULL,
  Commission varchar(45) DEFAULT NULL,
  Embauche varchar(45) DEFAULT NULL,
  table_employee varchar(45) DEFAULT NULL,
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
  Telephone VARCHAR(45) NOT NULL,
  Interlocuteur VARCHAR(45)  NULL,
  Delai_livraison INT NULL,
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
  prix VARCHAR(45) NULL,
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
telephone varchar (45) NOT NULL,
postecode varchar (45) NOT NULL,
table_produit INT, 
PRIMARY KEY (table_client),
FOREIGN KEY (table_produit) REFERENCES TABLES_PRODUITS (table_produit)
  );
  
