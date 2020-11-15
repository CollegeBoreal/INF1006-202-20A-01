
-- Comment créer une DATABASE appellée MORTIMAINTENANCE:

mysql> CREATE DATABASE MORTIMAINTENANCE;
Query OK, 1 row affected (0.09 sec)

-- comment vérifier qu'elle a été crée:

mysql> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| MORTIMAINTENANCE   |
| etudiants          |
| information_schema |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
6 rows in set (0.00 sec)



-- Comment créer un utilsateur pour l'utilisation à distance:

mysql> CREATE USER 'morti'@'%' IDENTIFIED BY 'morti_123';
Query OK, 0 rows affected (0.08 sec)


-- comment lui donner les autorités:

mysql> GRANT ALL ON MORTIMAINTENANCE.* TO 'morti'@'%';
Query OK, 0 rows affected (0.09 sec)


-- comment l'activer:

mysql> flush privileges;
Query OK, 0 rows affected (0.04 sec)



--COMMENT CHOISIR UNE SPECIFIQUE BASE DE DONNEES (DANS CE CAS LA BASE DE DONNEES MORTIMAINTENANCE):

mysql> USE MORTIMAINTENANCE
Database changed
mysql>


--Comment créer une nouvelle table aves des différents chambres:

CREATE TABLE Instruments
(Instrument INT AUTO_INCREMENT,
nom VARCHAR(40) NOT NULL,
vendeur VARCHAR(20),
Address_physique VARCHAR(30) NOT NULL,
date_de_reception DATE NOT NULL,
date_de_livraison DATE NOT NULL,
commentaire VARCHAR(100),
PRIMARY KEY (Instrument)
);



--Créer la table client: 

mysql> CREATE TABLE Clients
    -> (client INT AUTO_INCREMENT,
    -> prenom VARCHAR(20) NOT NULL,
    -> nom VARCHAR(20) NOT NULL,
    -> adresse_email VARCHAR(20) NOT NULL,
    -> telephone INT NOT NULL,
    -> adresse VARCHAR(20),
    -> nom_de_entreprise VARCHAR(20),
    -> PRIMARY KEY(client)
    -> );


--Créer la table employé: 

CREATE TABLE employes
(employe INT AUTO_INCREMENT,
prenom VARCHAR(20) NOT NULL,
nom VARCHAR(20) NOT NULL,
adresse_email VARCHAR(20) NOT NULL,
telephone INT NOT NULL,
adresse VARCHAR(20),
nom_de_departement VARCHAR(20),
PRIMARY KEY(employe)
)

--Créer la table département:

CREATE TABLE Departement
(departement INT AUTO_INCREMENT,
nom VARCHAR(20) NOT NULL,
telephone INT NOT NULL,
responsible VARCHAR(20),
PRIMARY KEY(departement)
);

--Créer la table sérvices:

CREATE TABLE Services
(service INT AUTO_INCREMENT,
Instrument
detail VARCHAR(20)








