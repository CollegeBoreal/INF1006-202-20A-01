
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


mysql> CREATE TABLE Instruments
    -> (Instrument_id INT AUTO_INCREMENT,
    -> nom VARCHAR(40) NOT NULL,
    -> MAC_Address VARCHAR(30) NOT NULL,
    -> date_de_achat DATE NOT NULL,
    -> vendeur VARCHAR(20),
    -> commentaire VARCHAR(100),
    -> PRIMARY KEY (Instrument_id)
    ->  );
uery OK, 0 rows affected (0.54 sec)


--pour vérifier notre nouvelle table:

mysql> DESCRIBE Instruments;
+---------------+--------------+------+-----+---------+----------------+
| Field         | Type         | Null | Key | Default | Extra          |
+---------------+--------------+------+-----+---------+----------------+
| Instrument_id | int          | NO   | PRI | NULL    | auto_increment |
| nom           | varchar(40)  | NO   |     | NULL    |                |
| MAC_Address   | varchar(30)  | NO   |     | NULL    |                |
| date_de_achat | date         | NO   |     | NULL    |                |
| vendeur       | varchar(20)  | YES  |     | NULL    |                |
| commentaire   | varchar(100) | YES  |     | NULL    |                |
+---------------+--------------+------+-----+---------+----------------+
6 rows in set (0.00 sec)




--Créer d'autre table: 

mysql> CREATE TABLE Clients
    -> (client_id INT AUTO_INCREMENT,
    -> prenom VARCHAR(20) NOT NULL,
    -> nom VARCHAR(20) NOT NULL,
    -> adresse_email VARCHAR(20) NOT NULL,
    -> telephone INT NOT NULL,
    -> adresse VARCHAR(20),
    -> nom_de_entreprise VARCHAR(20),
    -> PRIMARY KEY(client_id)
    -> );
Query OK, 0 rows affected (0.30 sec)




--pour vérifier notre nouvelle table:


mysql>  DESCRIBE Clients;
+-------------------+-------------+------+-----+---------+----------------+
| Field             | Type        | Null | Key | Default | Extra          |
+-------------------+-------------+------+-----+---------+----------------+
| client_id         | int         | NO   | PRI | NULL    | auto_increment |
| prenom            | varchar(20) | NO   |     | NULL    |                |
| nom               | varchar(20) | NO   |     | NULL    |                |
| adresse_email     | varchar(20) | NO   |     | NULL    |                |
| telephone         | int         | NO   |     | NULL    |                |
| adresse           | varchar(20) | YES  |     | NULL    |                |
| nom_de_entreprise | varchar(20) | YES  |     | NULL    |                |
+-------------------+-------------+------+-----+---------+----------------+
7 rows in set (0.00 sec)






