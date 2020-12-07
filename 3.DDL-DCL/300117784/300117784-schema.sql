

CREATE database BMOnlineGaming;

CREATE USER 'Bertrand'@'%' IDENTIFIED BY 'Bertrand_1';
GRANT ALL ON BMOnlineGaming.* TO 'Bertrand'@'%';


use BMOnlineGaming;

CREATE TABLE CLIENTS(
clients INT AUTO_INCREMENT Primary Key,
Nom_Client varchar (32),
Address_Client varchar (50),
Tel_Client  long

);

CREATE TABLE FOURNISSEURS(
Fournisseur INT AUTO_INCREMENT primary key,
Nom_Fournisseur varchar (32),
Address_Fournisseur varchar (50),
Tel_Fournisseur long
);

CREATE TABLE TYPESARTICLES(
Type_Article INT AUTO_INCREMENT primary key,
Nom_Type_Article varchar (50)

);

CREATE TABLE ARTICLES(
Article INT AUTO_INCREMENT,
Fournisseur INT,
Nom_Article varchar (50),
Type_Article INT,
quantite_Stock INT,
foreign key(Type_Article) references TYPESARTICLES (Type_Article),
foreign key(Fournisseur) references FOURNISSEURS (Fournisseur),
primary key(Article,Fournisseur)

);

CREATE TABLE TYPESDESERVICES(
type_Service INT AUTO_INCREMENT primary key,
nom_du_Service varchar (50)
);
CREATE TABLE SERVICES(
clients INT,
Article INT,
type_Service INT,
montant INT,
quantite INT,
Date_Services date,
foreign key(clients) references CLIENTS (clients),
foreign key(Article) references ARTICLES (Article),
foreign key(type_Service) references TYPESDESERVICES (type_Service),
primary key(clients,Article,type_Service)

);


