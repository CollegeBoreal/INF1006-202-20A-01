
-- Comment créer une DATABASE appellée MORTIMAINTENANCE:

mysql> CREATE DATABASE mortimaintenace;


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

mysql> CREATE USER 'morti123'@'%' IDENTIFIED BY 'morti_123';

-- comment lui donner les autorités:

mysql> GRANT ALL ON MORTIMAINTENANCE.* TO 'morti'@'%';
Query OK, 0 rows affected (0.09 sec)
GRANT ALL ON mortimaintenance.* TO 'morti123'@'%';





-- comment l'activer:

mysql> flush privileges;
Query OK, 0 rows affected (0.04 sec)



--COMMENT CHOISIR UNE SPECIFIQUE BASE DE DONNEES (DANS CE CAS LA BASE DE DONNEES MORTIMAINTENANCE):

mysql> USE MORTIMAINTENANCE
Database changed
mysql>


--Comment créer une nouvelle table aves des différents chambres:

CREATE TABLE Instruments
(instrument INT AUTO_INCREMENT,
nom VARCHAR(40) NOT NULL,
vendeur VARCHAR(20),
Address_physique VARCHAR(30) NOT NULL,
date_de_reception DATE NOT NULL,
date_de_livraison DATE ,
commentaire VARCHAR(100),
PRIMARY KEY (Instrument)
);



--Créer la table Client: 

CREATE TABLE Clients
(client INT AUTO_INCREMENT,
prenom VARCHAR(20) NOT NULL,
nom VARCHAR(20) NOT NULL,
adresse_email VARCHAR(20) NOT NULL,
telephone INT NOT NULL,
adresse VARCHAR(20),
nom_de_entreprise VARCHAR(20),
PRIMARY KEY(client)
);


--Créer la table Employé: 

CREATE TABLE Employes
(employe INT AUTO_INCREMENT,
prenom VARCHAR(20) NOT NULL,
nom VARCHAR(20) NOT NULL,
adresse_email VARCHAR(20) NOT NULL,
telephone INT NOT NULL,
adresse VARCHAR(20),
nom_de_departement VARCHAR(20),
PRIMARY KEY(employe)
)

--Créer la table Département:

CREATE TABLE Departements
(departement INT AUTO_INCREMENT,
domaine VARCHAR(20) NOT NULL,
telephone INT NOT NULL,
responsible VARCHAR(20),
employe INT,
PRIMARY KEY(departement),
FOREIGN KEY(employe)
      REFERENCES Employes(employe)
);

--Créer la table sérvices:


CREATE TABLE Services
(service INT AUTO_INCREMENT,
detail VARCHAR(20),
prix VARCHAR(20),
date_de_reception DATE NOT NULL,
date_de_livraison DATE ,
Instrument INT, 
employe INT,
PRIMARY KEY(service),
FOREIGN KEY(Instrument)
      REFERENCES Instruments(Instrument),
FOREIGN KEY(employe)
      REFERENCES Employes(employe)
);


--Créer la table Orde:


CREATE TABLE Orde
(orde INT AUTO_INCREMENT,
client INT,
instrument INT, 
service INT,
PRIMARY KEY(orde),
FOREIGN KEY(instrument)
      REFERENCES Instruments(instrument),
FOREIGN KEY(client)
      REFERENCES Clients(client),
FOREIGN KEY(service)
      REFERENCES Services(service)
);

