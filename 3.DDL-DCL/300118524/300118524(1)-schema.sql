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
    addresse VARCHAR(50),
    PRIMARY KEY(fournisseur)
    );

-- CRÉER TABLE CLIENT
CREATE TABLE CLIENTS (
    client INT AUTO_INCREMENT,
    nom VARCHAR(24) NOT NULL,
    addresse VARCHAR(50),
    telephone INT NOT NULL,
    fournisseur INT,
    PRIMARY KEY(client),
    FOREIGN KEY(fournisseur) 
       REFERENCES FOURNISSEURS(fournisseur)
    );
    
-- CRÉER TABLE CONNEXION
CREATE TABLE CONNEXIONS (
    cable BOOLEAN DEFAULT true,
    DSL VARCHAR(9),
    PRIMARY KEY(cable)
    );
-- CRÉER TABLE VITESSE
CREATE TABLE VITESSE (
    client INT,
    cable BOOLEAN,
    vitesse VARCHAR(9),
    PRIMARY KEY(client, cable),
    FOREIGN KEY(client) 
       REFERENCES CLIENTS(client),
    FOREIGN KEY(cable) 
       REFERENCES CONNEXIONS(cable)
    );
