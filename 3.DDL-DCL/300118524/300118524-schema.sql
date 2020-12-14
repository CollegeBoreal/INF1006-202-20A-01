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
    telephone NUMERIC NOT NULL,
    email VARCHAR(24),
    addresse VARCHAR(50),
    PRIMARY KEY(fournisseur)
    );
    
-- CRÉER TABLE VITESSE
CREATE TABLE VITESSES (
    vitesse INT AUTO_INCREMENT,
    download VARCHAR (8),
    upload VARCHAR (8),
    fournisseur INT,
    PRIMARY KEY(vitesse)
    );
    
-- CRÉER TABLE PRODUITS
    CREATE TABLE PRODUITS (
produit INT AUTO_INCREMENT,
cable BOOLEAN ,
dsl BOOLEAN,
fibre BOOLEAN,
fournisseur INT,
vitesse INT,
PRIMARY KEY (produit, fournisseur),
  INDEX fournisseur (fournisseur ASC) VISIBLE,
  CONSTRAINT PRODUITS_ibfk_1
    FOREIGN KEY (fournisseur)
    REFERENCES FOURNISSEURS (fournisseur)
    ON DELETE CASCADE,
  INDEX fk_PRODUITS_VITESSES1_idx (vitesse ASC) VISIBLE,
  CONSTRAINT fk_PRODUITS_VITESSES1
    FOREIGN KEY (vitesse)
    REFERENCES VITESSES (vitesse)
    ON DELETE CASCADE
    
);

    

-- CRÉER TABLE ZONE
CREATE TABLE ZONES (
    zone INT AUTO_INCREMENT,
    province VARCHAR (30),
    ville VARCHAR (30),
    PRIMARY KEY(zone),
    INDEX zone (zone ASC) VISIBLE
    );
    
    
-- CRÉER TABLE ROUTEURS
CREATE TABLE EQUIPEMENTS (
    equipement INT AUTO_INCREMENT,
    routeur BOOLEAN,
    rj45 BOOLEAN,
    coaxial BOOLEAN,
    alimentation BOOLEAN,
    fournisseur INT,
    PRIMARY KEY(equipement),
    FOREIGN KEY(fournisseur) REFERENCES FOURNISSEURS(fournisseur)
    );  

-- CRÉER TABLE CLIENT
CREATE TABLE CLIENTS (
    client INT AUTO_INCREMENT,
    nom VARCHAR(24) NOT NULL,
    prenom VARCHAR(24) NOT NULL,
    addresse VARCHAR(50) NOT NULL,
    telephone NUMERIC NOT NULL,
    zone INT,
    PRIMARY KEY(client, telephone),
    CONSTRAINT ZONES_ibfk_1
      FOREIGN KEY(zone) REFERENCES ZONES(zone)
    );

    
-- CRÉER TABLE PRIX
CREATE TABLE PRIX (
    vitesse INT,
    prix INT,
    PRIMARY KEY(vitesse, prix),
    CONSTRAINT PRIX_ibfk_1
    FOREIGN KEY (vitesse)
    REFERENCES VITESSES (vitesse)
    );

-- CRÉER TABLE VENTES
CREATE TABLE VENTES (
vente INT,
produit INT,
client INT,
telephone NUMERIC,
PRIMARY KEY (vente,produit, client, telephone),
INDEX fk_VENTES_CLIENTS1 (client ASC, telephone ASC) VISIBLE,
INDEX fk_VENTES_PRODUITS1_idx (produit ASC) VISIBLE,
  CONSTRAINT fk_VENTES_CLIENTS1
    FOREIGN KEY (client, telephone)
    REFERENCES CLIENTS (client, telephone),
    CONSTRAINT fk_VENTES_PRODUITS1
    FOREIGN KEY (produit)
    REFERENCES PRODUITS (produit)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
);

