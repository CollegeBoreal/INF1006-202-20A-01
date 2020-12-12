

## :zap: Mortimaintenance est une compagnie qui fournit les maintenances des équipements techniques:zap:

:star: la base de données de cette compagnie est basée sur 5 tables reliées, dans lesquelles on sauvegarde des informations concernant ses employés, ses clients, ses départements, ses services offerts et les commandes faites par cette compagnie. 


## :zap: Le schéma des relatiosn dans la base de données :zap:

![image](image/7.PNG)


## :pushpin: La politique de la compagnie concernant les informations de ces données:


## :one: l'adresse-email et numéro de télépnone de chaque employé doivent être uniques:


mysql> CREATE TABLE EMPLOYES
    -> (employe INT AUTO_INCREMENT,
    -> prenom VARCHAR(20) NOT NULL,
    -> nom VARCHAR(20) NOT NULL,
    -> adresse_email VARCHAR(20) NOT NULL,
    -> telephone INT NOT NULL,
    -> UNIQUE (adresse_email, telephone),
    -> adresse VARCHAR(20),
    -> nom_de_departement VARCHAR(20),
    -> PRIMARY KEY(employe)
    -> );
Query OK, 0 rows affected (0.38 sec)

mysql>


