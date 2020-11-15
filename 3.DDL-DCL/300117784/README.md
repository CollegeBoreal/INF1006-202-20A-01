CREATE database BMOnlineGaming;
use BMOnlineGaming;
CREATE TABLE Clients( 
Nom_Client varchar (32) primary key,
Prenom_Client varchar(32),
Address_Client varchar (32) not null,
Tel_Client int

);
###################################################
CREATE TABLE Fournisseurs( 
Id_Fournisseur int primary key,
Nom_Fournisseur varchar (32),
Address_Fournisseur varchar (32) not null,
Tel_Client int
);
##################################################
CREATE TABLE Accessoires( 
Nom_Accessoire varchar (32) primary Key
);
###################################################
CREATE TABLE Consoles( 
Nom_Console varchar (32) primary key
);

###################################################
CREATE TABLE TypedeJeux( 
Title_JEUX varchar (32) primary KEY

);
####################################################
CREATE TABLE Jeux(
Nom_jeux varchar (32), 
Nom_Console varchar (32),
Title_JEUX varchar (32),
foreign key (Nom_Console) references Consoles (Nom_Console),
foreign key (Title_JEUX) references TypedeJeux (Title_JEUX),
primary Key(Nom_jeux)

);
#########################################################
CREATE TABLE Vente_Jeux(

Nom_Client varchar (32),
Nom_jeux varchar (32),
Prix_Jeux int ,
foreign key (Nom_Client) references Clients (Nom_Client),
foreign key (Nom_jeux) references Jeux  (Nom_jeux),
primary key (Nom_Client,Nom_jeux)

);
################################################################
CREATE TABLE Vente_Consoles(
Nom_Client varchar (32),
Nom_Console varchar (32),
Date_Vente date,
Prix_Console int ,
foreign key (Nom_Client) references Clients (Nom_Client),
foreign key (Nom_Console) references Jeux  (Nom_Console),
primary key (Nom_Client,Nom_Console)

);

#################################################################

CREATE TABLE Vente_Accessoires(
Nom_Client varchar (32),
Nom_Accessoire varchar (32),
Date_Vente date,
Prix_Accessoire int ,
foreign key (Nom_Client) references Clients (Nom_Client),
foreign key (Nom_Accessoire) references Accessoires  (Nom_Accessoire),
primary key (Nom_Client,Nom_Accessoire)

);

##################################################################
CREATE TABLE Location_Accessoires(
Nom_Client varchar (32),
Nom_Accessoire varchar (32),
Date_Location date,
Date_retour date,
Prix_Accessoire int ,
foreign key (Nom_Client) references Clients (Nom_Client),
foreign key (Nom_Accessoire) references Accessoires  (Nom_Accessoire),
primary key (Nom_Client,Nom_Accessoire)

);
#############################################################
CREATE TABLE Location_Jeux(
Nom_Client varchar (32),
Nom_jeux varchar (32),
Date_Location date,
Date_Retour date,
Prix_Location_Jeux int ,
foreign key (Nom_Client) references Clients (Nom_Client),
foreign key (Nom_jeux) references Jeux  (Nom_jeux),
primary key (Nom_Client,Nom_jeux)

);
###############################################################
CREATE TABLE Location_Console(
Nom_Client varchar (32),
Nom_Console varchar (32),
Date_Location date,
Date_Retour date,
Prix_Location_Console int ,
foreign key (Nom_Client) references Clients (Nom_Client),
foreign key (Nom_Console) references Jeux  (Nom_Console),
primary key (Nom_Client,Nom_Console)

);
############################################################################
CREATE TABLE Depanage_Consoles(
Nom_Client varchar (32),
Nom_Console varchar (32),
Date_Depannage  date,
Prix_Depannage_Console int ,
foreign key (Nom_Client) references Clients (Nom_Client),
foreign key (Nom_Console) references Jeux  (Nom_Console),
primary key (Nom_Client,Nom_Console)

);
###############################################################################
CREATE TABLE Depannage_Accessoires(
Nom_Client varchar (32),
Nom_Accessoire varchar (32),
Date_Depannage date,
Prix_Depannage_Accessoire int ,
foreign key (Nom_Client) references Clients (Nom_Client),
foreign key (Nom_Accessoire) references Accessoires  (Nom_Accessoire),
primary key (Nom_Client,Nom_Accessoire)

);

