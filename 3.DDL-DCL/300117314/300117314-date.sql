--remplir la table de Clients:

mysql> INSERT INTO Clients (prenom, nom, adresse_email, telephone, adresse, nom_de_entreprise) VALUES ( 'Kala', 'Wiliam', 'kala.wiliam.com', 64725625, '24-Tudor-St', 'Rogers');
mysql> INSERT INTO Clients (prenom, nom, adresse_email, telephone, adresse, nom_de_entreprise) VALUES ( 'Philip', 'Cramer', 'philip.cramer.com', 64725622, '15 Poplar St', "La maison d'asie");
mysql> INSERT INTO Clients (prenom, nom, adresse_email, telephone, adresse, nom_de_entreprise) VALUES ( 'John', 'Steel', 'john.steel.com', 64725178, '158 Cedar crs', "La maison d'asie");
mysql> INSERT INTO Clients (prenom, nom, adresse_email, telephone, adresse, nom_de_entreprise) VALUES ( 'Franc', 'Wilson', 'franc.wilson.com', 64725256, '1287 Finch St', "Lonesomme restaurant");
mysql> INSERT INTO Clients (prenom, nom, adresse_email, telephone, adresse, nom_de_entreprise) VALUES ( 'Lucia', 'Carvalho', 'lucia.carvalho.com', 64725278, '12 Roxton Ave', "Rancho Grande");
mysql> INSERT INTO Clients (prenom, nom, adresse_email, telephone, adresse, nom_de_entreprise) VALUES ( 'Jose', 'Pavarotti', 'jose.pavarotti.com', 51425224, '74 Barker Ave', "Simson bistro");
mysql> INSERT INTO Clients (prenom, nom, adresse_email, telephone, adresse, nom_de_entreprise) VALUES ( 'Pascale', 'Cartrain', 'pascal.cartrain.com', 51425298, '38 Seaton Dr', "Cracker Box");
mysql> INSERT INTO Clients (prenom, nom, adresse_email, telephone, adresse, nom_de_entreprise) VALUES ( 'Paul', 'Henriot', 'paul.henriot.com', 51425723, '124 Bogert Ave', "Wartian Herku");
mysql> INSERT INTO Clients (prenom, nom, adresse_email, telephone, adresse, nom_de_entreprise) VALUES ( 'Karl', 'Saveley', 'karl.saveley.com', 51425759, '149 Melrose Ave', "Wolski");
mysql> INSERT INTO Clients (prenom, nom, adresse_email, telephone, adresse, nom_de_entreprise) VALUES ( 'Rita', 'Mulller', 'rita.muller.com', 51425762, '186 Bayberry Crs', "Reggiani");

--pour vérifier:
mysql> SELECT * FROM Clients;
+--------+---------+-----------+---------------------+-----------+------------------+----------------------+
| client | prenom  | nom       | adresse_email       | telephone | adresse          | nom_de_entreprise    |
+--------+---------+-----------+---------------------+-----------+------------------+----------------------+
|      1 | Kala    | Wiliam    | kala.wiliam.com     |  64725625 | 24-Tudor-St      | Rogers               |
|      2 | Philip  | Cramer    | philip.cramer.com   |  64725622 | 15 Poplar St     | La maison d'asie     |
|      3 | John    | Steel     | john.steel.com      |  64725178 | 158 Cedar crs    | La maison d'asie     |
|      4 | Franc   | Wilson    | franc.wilson.com    |  64725256 | 1287 Finch St    | Lonesomme restaurant |
|      5 | Lucia   | Carvalho  | lucia.carvalho.com  |  64725278 | 12 Roxton Ave    | Rancho Grande        |
|      6 | Jose    | Pavarotti | jose.pavarotti.com  |  51425224 | 74 Barker Ave    | Simson bistro        |
|      7 | Pascale | Cartrain  | pascal.cartrain.com |  51425298 | 38 Seaton Dr     | Cracker Box          |
|      8 | Paul    | Henriot   | paul.henriot.com    |  51425723 | 124 Bogert Ave   | Wartian Herku        |
|      9 | Karl    |           | paul.henriot.com    |  51425723 | 124 Bogert Ave   | Wartian Herku        |
|     10 | Karl    | Saveley   | karl.saveley.com    |  51425759 | 149 Melrose Ave  | Wolski               |
|     11 | Rita    | Mulller   | rita.muller.com     |  51425762 | 186 Bayberry Crs | Reggiani             |
+--------+---------+-----------+---------------------+-----------+------------------+----------------------+



--remplir la table de Employes:

mysql> INSERT INTO Employes (prenom, nom, adresse_email, telephone, adresse, nom_de_departement) VALUES ( 'Richard', 'Anderson', 'richard.anderson.com', 51425983, '48 Garden Ave', "Materiel");
mysql> INSERT INTO Employes (prenom, nom, adresse_email, telephone, adresse, nom_de_departement) VALUES ( 'Ema', 'Limeira', 'ema.limeira.com', 51424979, '68 Fifeshire Ave', "Materiel");
mysql> INSERT INTO Employes (prenom, nom, adresse_email, telephone, adresse, nom_de_departement) VALUES ( 'Michael', 'Holze', 'michael.holz.com', 51424922, '226 Newton Dr', "Materiel");
mysql> INSERT INTO Employes (prenom, nom, adresse_email, telephone, adresse, nom_de_departement) VALUES ( 'Maurizio', 'Moroni', 'morizio.moroni.com', 51424221, '23 Blackforest Ave', "Materiel");
mysql> INSERT INTO Employes (prenom, nom, adresse_email, telephone, adresse, nom_de_departement) VALUES ( 'Isabel', 'Sandra', 'isabel.sandra.com', 51424295, '170 Princess Ave', "logiciel");
mysql> INSERT INTO Employes (prenom, nom, adresse_email, telephone, adresse, nom_de_departement) VALUES ( 'Jean', 'Fresnier', 'jean.fresnier.com', 51424353, '87 Goremley Rd', "logiciel");
mysql> INSERT INTO Employes (prenom, nom, adresse_email, telephone, adresse, nom_de_departement) VALUES ( 'Francois', 'Rovelli', 'francois.rovelli.com', 51424773, '121 Shudell Ave', "logiciel");
mysql> INSERT INTO Employes (prenom, nom, adresse_email, telephone, adresse, nom_de_departement) VALUES ( 'Howard', 'Synder', 'howard.synder.com', 51424723, '189 Churchill Ave', "logiciel");

-- pour vérifier: 

mysql> SELECT * FROM Employes;
+---------+----------+----------+----------------------+-----------+--------------------+--------------------+
| employe | prenom   | nom      | adresse_email        | telephone | adresse            | nom_de_departement |
+---------+----------+----------+----------------------+-----------+--------------------+--------------------+
|       1 | Richard  | Anderson | richard.anderson.com |  51425983 | 48 Garden Ave      | Materiel           |
|       2 | Ema      | Limeira  | ema.limeira.com      |  51424979 | 68 Fifeshire Ave   | Materiel           |
|       3 | Michael  | Holze    | michael.holz.com     |  51424922 | 226 Newton Dr      | Materiel           |
|       4 | Maurizio | Moroni   | morizio.moroni.com   |  51424221 | 23 Blackforest Ave | Materiel           |
|       5 | Isabel   | Sandra   | isabel.sandra.com    |  51424295 | 170 Princess Ave   | logiciel           |
|       6 | Jean     | Fresnier | jean.fresnier.com    |  51424353 | 87 Goremley Rd     | logiciel           |
|       7 | Francois | Rovelli  | francois.rovelli.com |  51424773 | 121 Shudell Ave    | logiciel           |
|       8 | Howard   | Synder   | howard.synder.com    |  51424723 | 189 Churchill Ave  | logiciel           |
+---------+----------+----------+----------------------+-----------+--------------------+--------------------+


