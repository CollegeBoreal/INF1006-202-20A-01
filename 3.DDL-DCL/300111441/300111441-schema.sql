-- CREER DATABASE
CREATE DATABASE EMPIRE_POUSSINNY;

-- CRÉER L'UTILISATEUR (LUXURY) ET MOT DE PASSE (password)
CREATE USER 'luxury'@'%' IDENTIFIED BY 'password';

-- DONNER TOUS LES PRIVILÈGES À L'UTILISATEUR (luxury) '%' = toutes les addresses
GRANT ALL ON EMPIRE_POUSSINNY.* TO 'luxury'@'%';

-- ACCÉDER À MON DATABASE 
USE EMPIRE_POUSSINNY;


CREATE TABLE POULAILLERS (
  poulailler INT AUTO_INCREMENT,
  nbre_male INT NOT NULL,
  nbre_femelle INT NOT NULL,
  PRIMARY KEY (poulailler)
);


CREATE TABLE MEDICAMENTS (
  medicament INT NOT NULL AUTO_INCREMENT,
  type_medicament VARCHAR(50) NOT NULL,
  quantite_administre INT NOT NULL,
  poulailler INT,
  PRIMARY KEY (medicament),
  FOREIGN KEY (poulailler) REFERENCES POULAILLERS(poulailler)
);

CREATE TABLE NOURRITURES (
  nourriture INT NOT NULL AUTO_INCREMENT,
  type_nourriture VARCHAR(50) NOT NULL,
  quantite_nourriture INT NOT NULL,
  poulailler INT,
  PRIMARY KEY (nourriture),
  FOREIGN KEY (poulailler) REFERENCES POULAILLERS(poulailler)
);               
               
 
CREATE TABLE RELEVES (
  releve INT NOT NULL AUTO_INCREMENT,
  nbre_ponte INT NOT NULL,
  nbre_deces_male INT NOT NULL,
  nbre_deces_femelle INT NOT NULL,
  poulailler INT,
  PRIMARY KEY (releve),
  FOREIGN KEY (poulailler) REFERENCES POULAILLERS(poulailler)
);               
