
-- Comment créer une DATABASE appellée MORTIMAINTENANCE:

CREATE DATABASE mortimaintenance;


-- Comment créer un utilsateur pour l'utilisation à distance:

CREATE USER IF NOT EXISTS 'morti'@'%' IDENTIFIED BY 'morti_123';


-- comment lui donner les autorités:

GRANT ALL ON mortimaintenance.* TO 'morti'@'%';

-- comment l'activer:

flush privileges;




-- COMMENT CHOISIR UNE SPECIFIQUE BASE DE DONNEES (DANS CE CAS LA BASE DE DONNEES MORTIMAINTENANCE):


USE mortimaintenance;

-- Créer la table EMPLOYES: 

CREATE TABLE EMPLOYES
(employe INT AUTO_INCREMENT,
prenom VARCHAR(20) NOT NULL,
nom VARCHAR(20) NOT NULL,
adresse_email VARCHAR(20) NOT NULL,
telephone INT NOT NULL,
adresse VARCHAR(20),
nom_de_departement VARCHAR(20),
PRIMARY KEY(employe)
);



-- Créer la table DEPARTEMENTS:

CREATE TABLE DEPARTEMENTS
(departement INT AUTO_INCREMENT,
domaine VARCHAR(20) NOT NULL,
telephone INT NOT NULL,
responsable VARCHAR(20),
employe INT,
PRIMARY KEY(departement),
FOREIGN KEY(employe)
      REFERENCES EMPLOYES(employe)
);



-- Créer la table CLIENTS: 

CREATE TABLE CLIENTS
(client INT AUTO_INCREMENT,
prenom VARCHAR(20) NOT NULL,
nom VARCHAR(20) NOT NULL,
adresse_email VARCHAR(20) NOT NULL ,
telephone INT NOT NULL,
adresse VARCHAR(20),
nom_de_entreprise VARCHAR(20),
PRIMARY KEY(client)
);




-- Créer la table SERVICES:


CREATE TABLE SERVICES
(service INT AUTO_INCREMENT,
employe INT,
detail VARCHAR(100),
prix VARCHAR(20),
PRIMARY KEY(service, employe)
);



-- Créer la table COMMANDES: 
CREATE TABLE COMMANDES
(commande INT AUTO_INCREMENT,
nom_de_instrument VARCHAR(40) NOT NULL,
vendeur VARCHAR(20),
Address_physique VARCHAR(30) NOT NULL,
date_de_reception DATE NOT NULL, 
date_de_livraison DATE,
commentaire VARCHAR(100),
client INT,
service INT,
employe INT,
 
PRIMARY KEY(commande, client, service, employe),

FOREIGN KEY(service)
      REFERENCES SERVICES(service),

FOREIGN KEY(employe)
      REFERENCES EMPLOYES(employe),

INDEX Client_ind (client),
CONSTRAINT commande_ibfk_1  
   FOREIGN KEY (client) REFERENCES CLIENTS(client)
      ON DELETE CASCADE
);






