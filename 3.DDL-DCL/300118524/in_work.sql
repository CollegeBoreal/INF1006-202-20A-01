-- MON DATABASE
CREATE DATABASE ALL_TELECOM;

-- CRÉER L'UTILISATEUR (zoureni) ET SON MOT DE PASSE (password)
CREATE USER 'zoureni'@'%' IDENTIFIED BY 'password';

-- DONNER TOUT LES PRIVILÈGES À L'UTILISATEUR (zoureni) '%' = tout les addresses
GRANT ALL ON ALL_TELECOM.* TO 'zoureni'@'%';

-- ACCÉDER À MON DATABASE 300118524
USE ALL_TELECOM;

-- CRÉER TABLE FOURNISSEURS
CREATE TABLE FOURNISSEURS (
    fournisseur INT AUTO_INCREMENT,
    nom VARCHAR(24) NOT NULL,
    telephone INT NOT NULL,
    email VARCHAR(24),
    addresse VARCHAR(50),
    PRIMARY KEY(fournisseur)
    );

-- CRÉER TABLE ZONE
CREATE TABLE ZONES (
    zone INT AUTO_INCREMENT,
    province VARCHAR (30),
    ville VARCHAR (30),
    quartier VARCHAR (30),
    PRIMARY KEY(zone)
    );
-- CRÉER TABLE ROUTEURS
CREATE TABLE ROUTEURS (
    routeur INT AUTO_INCREMENT,
    MAC VARCHAR (24),
    PRIMARY KEY(routeur)
    );  
-- CRÉER TABLE CLIENT
CREATE TABLE CLIENTS (
    client INT AUTO_INCREMENT,
    nom VARCHAR(24) NOT NULL,
    prenom VARCHAR(24) NOT NULL,
    addresse VARCHAR(50) NOT NULL,
    telephone INT NOT NULL,
    fournisseur INT,
    routeur INT,
    zone INT,
    PRIMARY KEY(client, telephone),
    FOREIGN KEY(routeur) REFERENCES ROUTEURS(routeur),
      FOREIGN KEY(zone) REFERENCES ZONES(zone)
    );
    
-- CRÉER TABLE VITESSE
CREATE TABLE VITESSE (
    vitesse INT AUTO_INCREMENT,
    download VARCHAR (8),
    upload VARCHAR (8),
    fournisseur INT,
    PRIMARY KEY(vitesse),
    FOREIGN KEY(fournisseur) REFERENCES FOURNISSEURS(fournisseur)
    );
    
-- CRÉER TABLE PRIX
CREATE TABLE PRIX (
    vitesse INT,
    prix FLOAT,
    PRIMARY KEY(vitesse),
    FOREIGN KEY(vitesse) REFERENCES VITESSE(vitesse)
    );
-- CRÉER TABLE FACTURE
CREATE TABLE FACTURES (
    client INT ,
    prix FLOAT,
    facture FLOAT,
    vitesse INT,
    PRIMARY KEY(client, prix),
    FOREIGN KEY(client) REFERENCES CLIENTS(client),
      FOREIGN KEY(prix) REFERENCES PRIX(prix),
      FOREIGN KEY(vitesse) REFERENCES VITESSE(vitesse)
    ); 
