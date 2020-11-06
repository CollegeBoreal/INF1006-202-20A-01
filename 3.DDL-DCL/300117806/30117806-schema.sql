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


CREATE TABLE cLient (
  Id_client INT AUTO_INCREMENT,
  Nom VARCHAR(20) NOT NULL,
  Prenom VARCHAR(20) NOT NULL,
  Adresse VARCHAR (30) NOT NULL,
  Telephone INT NOT NULL, 
  PRIMARY KEY (Id_client)
  );
  
  
  CREATE TABLE Fournisseur (
    Id_fournisseur INT AUTO_INCREMENT,
    Nom VARCHAR(20),
    Adresse VARCHAR(30),
    Telephone INT,
    Type_de_societe VARCHAR(20)
    );
    
    
    CREATE TABLE Produit (
      Id_produit INT AUTO_INCREMENT,
      Nom VARCHAR(20),
      Marque VARCHAR(20),
      Prix INT
      );
      
      
      
  
  
  






