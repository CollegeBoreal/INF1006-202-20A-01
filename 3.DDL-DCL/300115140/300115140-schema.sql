
-- *********************************
-- Création de ma DATABASE
-- *********************************

CREATE DATABASE ETREBIEN;

--*********************************
-- Donner les autorisations
--*********************************
CREATE USER 'zack'@'%' IDENTIFIED BY 'password';
GRANT ALL ON ETREBIEN.* TO 'zack'@'%';

USE ETREBIEN;

-- *********************************
--  Création des TABLES 
-- ********************************

CREATE TABLE Fournisseur (
  Id_fournisseur INT AUTO_INCREMENT,
  Nom VARCHAR(20),
  Adresse VARCHAR(35),
  Telephone INT,
  Nature_du_fournisseur VARCHAR(15)
  PRIMARY KEY (Id_fournisseur)
  );

CREATE TABLE Ventes (
  id_ventes INT AUTO_INCREMENT,
  id_clients INT,
  Type VARCHAR (15),
  Prix INT,
  Date_de_vente DATE
  PRIMARY KEY (id_ventes, id_clients)
  );
  
CREATE TABLE Clients (
  id_client
  Nom VARCHAR(20),
  Prenom VARCHAR(20),
  Adresse VARCHAR(35),
  Code_postale VARCHAR (10),
  Telephone VARCHAR(10),
  PRIMARY KEY (id_client)
  );
  
 CREATE TABLE Produits (
   id_produit INT AUTO_INCREMENT,
   id_client INT,
   Nom_du_produit VARCHAR(15),
   PRIMARY KEY (id_produit, id_client)
   );
   
  CREATE TABLE Services (
    id_services INT AUTO_INCREMENT,
    id_fournisseur INT 
    Nom_du_service VARCHAR(15),
    PRIMARY KEY (id_services, id_fournisseur)
    );
   
  



