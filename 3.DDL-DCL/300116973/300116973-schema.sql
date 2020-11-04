-- creation de la base de donnee superette_2s_plus

CREATE DATABASE superette_2S_plus;

-- pour utiliser la base de donnee

USE superette_2S_plus;

-- creation de l'utilisateur
CREATE USER 'pascaline'@'%' IDENTIFIED BY 'password';

-- donnee tout les privileges a l'ulilisateur pascaline

GRANT ALL ON superette_2S_plus.* TO 'pascaline'@'%';

-- creation de la table fournisseur

CREATE TABLE fournisseur (
Id_fournisseur INT AUTO_INCREMENT NOT NULL,
Nom_du_fournisseur VARCHAR(25) NOT NULL,
Numero_de_telephone INT(10) NOT NULL,
Email VARCHAR(25) NOT NULL,
Adresse VARCHAR(25) NULL,
PRIMARY KEY(Id_fournisseur)
);

-- creation de la table produit

CREATE TABLE produit (
Id_produit INT AUTO_INCREMENT NOT NULL,
Nom_du_produit VARCHAR(25) NOT NULL,
Numero_de_reference VARCHAR(25) NOT NULL,
Date_de_peremption DATE DEFAULT(1990-01-01) NULL,
Id_fournisseur INT,
PRIMARY KEY (Id_produit),
FOREIGN KEY (Id_fournisseur) REFERENCES fournisseur
 (Id_fournisseur)
 );

-- creation de la table commande

CREATE TABLE commande (
Id_commande INT AUTO_INCREMENT NOT NULL,
Date_de_commande DATE DEFAULT (1990-01-01) NULL,
Date_et_heure_de_livraison DATETIME NOT NULL,
Id_produit INT,
PRIMARY KEY (Id_commande),
FOREIGN KEY (Id_produit) REFERENCES produit (Id_produit)
); 


-- creation de la table client

CREATE TABLE client (
Id_client INT AUTO_INCREMENT NOT NULL,
Nom TEXT(25) NOT NULL,
Numero_de_telephone INT(10) NOT NULL,
Email VARCHAR(25) NULL,
Id_commande INT,
PRIMARY KEY (Id_client),
FOREIGN KEY (Id_commande) REFERENCES commande (Id_commande)
);

-- creation de la table achat

CREATE TABLE achat (
Id_achat INT AUTO_INCREMENT NOT NULL,
Montant INT(255) NULL,
Quantites INT(100) NULL,
Date_dachat DATE DEFAULT (1990-01-01) NULL,
Id_fournisseur INT,
Id_produit INT,
PRIMARY KEY (Id_achat),
FOREIGN KEY (Id_fournisseur) REFERENCEs fournisseur 
(Id_fournisseur),
FOREIGN KEY (Id_produit) REFERENCES produit (Id_produit)
);


-- creation de la table facture

CREATE TABLE facture(
Id_facture INT AUTO_INCREMENT NOT NULL,
Montant INT(255) NULL,
Quantites INT(100) NULL,
Date_facturation DATE DEFAULT (1990-01-01) NULL,
Id_client INT,
Id_commande INT,
PRIMARY KEY (Id_facture),
FOREIGN KEY (Id_client) REFERENCES client (Id_client),
FOREIGN KEY (Id_commande) REFERENCES commande (Id_commande)
);


-- creation de la table employe

CREATE TABLE employe(
Matricule INT AUTO_INCREMENT NOT NULL,
Nom VARCHAR(25) NOT NULL,
prenom VARCHAR(25) NULL,
Numero_de_telephone INT(10) NOT NULL,
Sexe_feminin BOOLEAN DEFAULT (TRUE OR FALSE) NULL,
Id_achat INT,
Id_fournisseur INT,
PRIMARY KEY (Matricule),
FOREIGN KEY (Id_achat) REFERENCES achat (Id_achat),
FOREIGN KEY (Id_fournisseur) REFERENCES fournisseur
(Id_fournisseur)
);


-- creation de la table paiement

CREATE TABLE paiement(
Id_paiement INT NOT NULL,
Montant FLOAT(250,00) NULL,
Id_client INT,
Id_facture INT,
Id_commande INT,
FOREIGN KEY (Id_client) REFERENCES client (Id_client),
FOREIGN KEY (Id_facture) REFERENCES facture (Id_facture),
FOREIGN KEY (Id_commande) REFERENCES commande (Id_commande)
);

