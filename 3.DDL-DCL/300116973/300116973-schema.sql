-- creation de la base de donnee superette_2S_plus

CREATE DATABASE superette_2S_plus;

-- pour utiliser la base de donnee

USE superette_2S_plus;

-- creation de l'utilisateur
CREATE USER 'nathalie'@'%' IDENTIFIED BY 'password';

-- donnee tout les privileges a l'ulilisateur pascaline

GRANT ALL ON superette_2S_plus.* TO 'admin'@'%';

-- creation de la table fournisseurs

CREATE TABLE FOURNISSEURS (
fournisseur INT AUTO_INCREMENT,
Nom_du_fournisseur VARCHAR(25) NOT NULL,
Numero_de_telephone INT NOT NULL,
Email VARCHAR(25) NULL,
Adresse VARCHAR(25) NULL,
PRIMARY KEY(fournisseur),
UNIQUE INDEX `Email_UNIQUE` (`Email` ASC)
);

-- creation de la table produits

CREATE TABLE PRODUITS(
produit INT AUTO_INCREMENT,
Nom_du_produit VARCHAR(25) NOT NULL,
Numero_de_reference VARCHAR(25),
Date_de_peremption DATE DEFAULT NULL,
fournisseur INT,
PRIMARY KEY (produit),
FOREIGN KEY (fournisseur) REFERENCES FOURNISSEURS (fournisseur)
 );
 
 -- creation de la table clients

CREATE TABLE CLIENTS(
client INT AUTO_INCREMENT,
Nom TEXT(25) NOT NULL,
Numero_de_telephone INT NOT NULL,
Email VARCHAR(25) NULL,
PRIMARY KEY (client)
);

-- creation de la table commandes

CREATE TABLE COMMANDES(
commande INT CHECK (commande > 10),
Date_de_commande DATE DEFAULT NULL,
Date_et_heure_de_livraison DATETIME,
quantite INT NOT NULL,
produit INT,
client INT,
PRIMARY KEY (commande, produit),
FOREIGN KEY (produit) REFERENCES PRODUITS (produit),
FOREIGN KEY (client) REFERENCES CLIENTS 
(client),
CONSTRAINT commande_nonzero CHECK (commande <> 0)
); 



-- creation de la table achats

CREATE TABLE ACHATS(
achat INT AUTO_INCREMENT,
Montant INT NOT NULL,
Quantites INT NOT NULL,
Date_dachat DATETIME,
produit INT,
PRIMARY KEY (achat, produit),
FOREIGN KEY (produit) REFERENCES PRODUITS (produit)
);


-- creation de la table employes

CREATE TABLE EMPLOYES(
Matricule INT AUTO_INCREMENT,
Nom VARCHAR(25) NOT NULL,
prenom VARCHAR(25) NULL,
Numero_de_telephone INT NOT NULL,
Sexe_feminin BOOLEAN DEFAULT NULL,
achat INT,
PRIMARY KEY (Matricule),
 INDEX `ach_ind` (`achat`),
  CONSTRAINT `Nom_ibfk_1` 
     FOREIGN KEY (achat) REFERENCES ACHATS (achat)
     ON DELETE CASCADE
);

-- creation de la table factures

CREATE TABLE FACTURES(
facture INT AUTO_INCREMENT NOT NULL,
Montant INT NOT NULL,
Quantites INT NULL,
Date_facturation DATE DEFAULT NULL,
commande INT,
paiement INT
PRIMARY KEY (facture, commande, paiement),
FOREIGN KEY (commande) REFERENCES COMMANDES (commande),
FOREIGN KEY (paiement) REFERENCES PAIEMENTS (paiement
);

-- creation de la table paiements

CREATE TABLE PAIEMENTS(
paiement INT AUTO_INCREMENT,
Montant INT NULL,
facture INT,
PRIMARY KEY (paiement, facture),
FOREIGN KEY (facture) REFERENCES FACTURES (facture)
);
