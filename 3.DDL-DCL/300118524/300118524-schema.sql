-- MON DATABASE
CREATE DATABASE ALL_TELECOM;

-- CRÉER L'UTILISATEUR (zoureni) ET SON MOT DE PASSE (password)
CREATE USER 'zoureni'@'%' IDENTIFIED BY 'password';

-- DONNER TOUT LES PRIVILÈGES À L'UTILISATEUR (zoureni) '%' = tout les addresses
GRANT ALL ON ALL_TELECOM.* TO 'zoureni'@'%';

-- ACCÉDER À MON DATABASE 300118524
USE ALL_TELECOM;

-- -----------------------------------------------------
-- Table ZONES
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS ZONES (
  zone INT NOT NULL AUTO_INCREMENT,
  province VARCHAR(30) NULL DEFAULT NULL,
  ville VARCHAR(30) NULL DEFAULT NULL,
  PRIMARY KEY (zone),
  INDEX zone (zone ASC) VISIBLE
  );



-- -----------------------------------------------------
-- Table CLIENTS
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS CLIENTS (
  client INT NOT NULL AUTO_INCREMENT,
  nom VARCHAR(24) NOT NULL,
  prenom VARCHAR(24) NOT NULL,
  addresse VARCHAR(50) NOT NULL,
  telephone DECIMAL(10,0) NOT NULL,
  birthday DATE NULL DEFAULT NULL,
  zone INT NOT NULL,
  PRIMARY KEY (client, telephone, zone),
  INDEX fk_CLIENTS_ZONES1_idx (zone ASC) VISIBLE,
  CONSTRAINT fk_CLIENTS_ZONES1
    FOREIGN KEY (zone)
    REFERENCES ZONES (zone)
    ON DELETE CASCADE
    ON UPDATE CASCADE
    );


-- -----------------------------------------------------
-- Table EQUIPEMENTS
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS EQUIPEMENTS (
  equipement INT NOT NULL AUTO_INCREMENT,
  routeur BOOLEAN NULL DEFAULT NULL,
  rj45 BOOLEAN NULL DEFAULT NULL,
  coaxial BOOLEAN NULL DEFAULT NULL,
  alimentation BOOLEAN NULL DEFAULT NULL,
  PRIMARY KEY (equipement)
  );


-- -----------------------------------------------------
-- Table FOURNISSEURS
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS FOURNISSEURS (
  fournisseur INT NOT NULL AUTO_INCREMENT,
  nom VARCHAR(24) NOT NULL,
  telephone DECIMAL(10,0) NOT NULL,
  email VARCHAR(24) NULL DEFAULT NULL,
  addresse VARCHAR(50) NULL DEFAULT NULL,
  PRIMARY KEY (fournisseur)
);


-- -----------------------------------------------------
-- Table VITESSES
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS VITESSES (
  vitesse INT NOT NULL AUTO_INCREMENT,
  download VARCHAR(8) NULL DEFAULT NULL,
  upload VARCHAR(8) NULL DEFAULT NULL,
  fournisseur INT NULL DEFAULT NULL,
  prix FLOAT NULL DEFAULT NULL,
  PRIMARY KEY (vitesse)
  );


-- -----------------------------------------------------
-- Table PRODUITS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS PRODUITS (
  produit INT NOT NULL AUTO_INCREMENT,
  cable BOOLEAN NULL DEFAULT NULL,
  dsl BOOLEAN NULL DEFAULT NULL,
  fibre BOOLEAN NULL DEFAULT NULL,
  fournisseur INT NOT NULL,
  equipement INT NOT NULL,
  vitesse INT NOT NULL,
  PRIMARY KEY (produit, fournisseur, equipement, vitesse),
  INDEX fournisseur (fournisseur ASC) VISIBLE,
  INDEX fk_PRODUITS_EQUIPEMENTS1_idx (equipement ASC) VISIBLE,
  INDEX fk_PRODUITS_VITESSES1_idx (vitesse ASC) VISIBLE,
  CONSTRAINT PRODUITS_ibfk_1
    FOREIGN KEY (fournisseur)
    REFERENCES FOURNISSEURS (fournisseur)
    ON DELETE CASCADE,
  CONSTRAINT fk_PRODUITS_EQUIPEMENTS1
    FOREIGN KEY (equipement)
    REFERENCES EQUIPEMENTS (equipement)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT fk_PRODUITS_VITESSES1
    FOREIGN KEY (vitesse)
    REFERENCES VITESSES (vitesse)
    ON DELETE  CASCADE
    ON UPDATE  CASCADE
    );


-- -----------------------------------------------------
-- Table VENTES
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS VENTES (
  vente INT NOT NULL AUTO_INCREMENT,
  produit INT NOT NULL,
  client INT NOT NULL,
  telephone DECIMAL(10,0) NOT NULL,
  PRIMARY KEY (vente, produit, client, telephone),
  INDEX fk_VENTES_CLIENTS1 (client ASC, telephone ASC) VISIBLE,
  INDEX fk_VENTES_PRODUITS1_idx (produit ASC) VISIBLE,
  CONSTRAINT fk_VENTES_CLIENTS1
    FOREIGN KEY (client , telephone)
    REFERENCES CLIENTS (client , telephone),
  CONSTRAINT fk_VENTES_PRODUITS1
    FOREIGN KEY (produit)
    REFERENCES PRODUITS (produit)
    );

