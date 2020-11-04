
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











