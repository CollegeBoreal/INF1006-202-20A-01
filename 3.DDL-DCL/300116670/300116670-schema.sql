-- *********************************
-- Création de ma DATABASE
-- *********************************
CREATE IF NO EXISTS DATABASE MOTOSPORT;


-- *********************************
-- Creation des utilisateurs et don-
-- ner les autorisations
-- *********************************
CREATE USER 'Auriane'@'%' IDENTIFIED BY 'password';
GRANT ALL ON MOTOSPORT.* TO 'Auriane'@'%';


-- *********************************
-- CREATION DES TABLES
-- *********************************

-- Ma table fournisseurs
CREATE TABLE FOURNISSEURS
fournisseur INT AUTO_INCREMENT,
Nom VARCHAR(35) NOT NULL,
Coordonnees  VARCHAR(13) NOT NULL,
Addresse VARCHAR(39) NOT NULL;

-- Ma table Services
CREATE TABLE SERVICES

