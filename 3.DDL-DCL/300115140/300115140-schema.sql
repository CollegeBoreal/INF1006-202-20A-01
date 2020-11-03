
-- *********************************
-- Création de ma DATABASE
-- *********************************

CREATE DATABASE ETREBIEN;

-- *********************************
--  Création des TABLES 
-- ********************************

CREATE TABLE Fournisseur (
  Id_fournisseur INT(5),
  Nom VARCHAR(20),
  Adresse VARCHAR(35)
  Telephone INT(10)
  Nature_du_fournisseur VARCHAR(15)
  );

CREATE TABLE Ventes (
  Id_ventes INT(5),
  Id_clients INT(5),
  Type VARCHAR (15),
  Prix INT(10),
  Date DATE(15),
  );
  
CREATE TABLE Clients (
  Nom VARCHAR(20),
  Prenom VARCHAR(20),
  Adresse VARCHAR(35),
  Code_postale VARCHAR (10),
  Telephone VARCHAR(10),
  );
  
 CREATE TABLE Produits (
   Id_produits INT(5),
   Nom_du_produit VARCHAR(15),
   Id_clients INT(10),
   );
   
  CREATE TABLE Services (
    Id_services INT(5),
    Nom_du_service VARCHAR(15),
    Id_fournisseur INT (5),
    );
   
  



