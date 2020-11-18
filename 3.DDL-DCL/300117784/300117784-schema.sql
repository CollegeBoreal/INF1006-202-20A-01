CREATE USER 'Bertrand'@'%' IDENTIFIED BY 'Bertrand_1';
GRANT ALL ON BMOnlineGaming.* TO 'Bertrand'@'%';
CREATE database BMOnlineGaming;
use BMOnlineGaming;

CREATE TABLE CLIENTS(
clients INT AUTO_INCREMENT Primary Key,
Nom_Client varchar (32),
Address_Client varchar (50),
Tel_Client  long

);

CREATE TABLE FOUNISSEURS(
Founisseur INT AUTO_INCREMENT primary key,
Nom_Fournisseur varchar (32),
Address_Founisseur varchar (50),
Tel_Fournisseur long
);

CREATE TABLE TYPESARTICLES(
Type_Article INT AUTO_INCREMENT primary key,
Nom_Type_Article varchar (50)

);

CREATE TABLE ARTICLES(
Article INT AUTO_INCREMENT primary key,
Nom_Article varchar (50),
Type_Article INT,
foreign key(Type_Article) references TYPESARTICLES (Type_Article)

);

CREATE TABLE VENTES(
clients INT,
Article INT,
foreign key(clients) references CLIENTS (clients),
foreign key(Article) references ARTICLES (Article),
Date_Vente date,
primary key(clients,Article)

);

CREATE TABLE LOCATIONS(
clients INT,
Article INT,
foreign key(clients) references CLIENTS (clients),
foreign key(Article) references ARTICLES (Article),
Date_Location date,
Date_Retour date,
primary key(clients,Article)

);

CREATE TABLE DEPANNAGE(
clients INT,
Article INT,
foreign key(clients) references CLIENTS (clients),
foreign key(Article) references ARTICLES (Article),
Date_Depannage date,
primary key(clients,Article)

);

CREATE TABLE PAIEMENTS(
Paiement INT AUTO_INCREMENT,
clients INT,
Article INT,
Montant INT,
Date_Paiement date,
foreign key(clients) references CLIENTS (clients),
foreign key(Article) references ARTICLES (Article),
primary key(Paiement,clients,Article)

);




