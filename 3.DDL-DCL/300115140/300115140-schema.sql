
-- *********************************
-- Création de ma DATABASE
-- *********************************

CREATE DATABASE ETREBIEN;

-- *********************************
--  Création des TABLES 
-- ********************************

CREATE TABLE Fournisseurs (
  Nom VARCHAR(20),
  Adresse VARCHAR(35)
  Telephone INT(10)
  Nature_du_fournisseur VARCHAR(15)
  );

CREATE TABLE Ventes (
  Services VARCHAR(15),
  Produits VARCHAR(15),
  );
  
CREATE TABLE Clients (
  Nom VARCHAR(20),
  Prenom VARCHAR(20),
  Adresse VARCHAR(35),
  Code_Postale VARCHAR(6),
  Telephone INT,
  Clients_venant_de VARCHAR(15),
  );
  
  
  



