
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








