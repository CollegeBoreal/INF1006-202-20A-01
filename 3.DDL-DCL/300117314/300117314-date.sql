-- remplir la table de CLIENTS:

INSERT INTO CLIENTS (prenom, nom, adresse_email, telephone, adresse, nom_de_entreprise) VALUES ( 'Kala', 'Wiliam', 'kala.wiliam.com', 64725625, '24-Tudor-St', 'Rogers');
INSERT INTO CLIENTS (prenom, nom, adresse_email, telephone, adresse, nom_de_entreprise) VALUES ( 'Philip', 'Cramer', 'philip.cramer.com', 64725622, '15 Poplar St', "La maison d'asie");
INSERT INTO CLIENTS (prenom, nom, adresse_email, telephone, adresse, nom_de_entreprise) VALUES ( 'John', 'Steel', 'john.steel.com', 64725178, '158 Cedar crs', "La maison d'asie");
INSERT INTO CLIENTS (prenom, nom, adresse_email, telephone, adresse, nom_de_entreprise) VALUES ( 'Franc', 'Wilson', 'franc.wilson.com', 64725256, '1287 Finch St', "Lonesomme restaurant");
INSERT INTO CLIENTS (prenom, nom, adresse_email, telephone, adresse, nom_de_entreprise) VALUES ( 'Lucia', 'Carvalho', 'lucia.carvalho.com', 64725278, '12 Roxton Ave', "Rancho Grande");
INSERT INTO CLIENTS (prenom, nom, adresse_email, telephone, adresse, nom_de_entreprise) VALUES ( 'Jose', 'Pavarotti', 'jose.pavarotti.com', 51425224, '74 Barker Ave', "Simson bistro");
INSERT INTO CLIENTS (prenom, nom, adresse_email, telephone, adresse, nom_de_entreprise) VALUES ( 'Pascale', 'Cartrain', 'pascal.cartrain.com', 51425298, '38 Seaton Dr', "Cracker Box");
INSERT INTO CLIENTS (prenom, nom, adresse_email, telephone, adresse, nom_de_entreprise) VALUES ( 'Paul', 'Henriot', 'paul.henriot.com', 51425723, '124 Bogert Ave', "Wartian Herku");
INSERT INTO CLIENTS (prenom, nom, adresse_email, telephone, adresse, nom_de_entreprise) VALUES ( 'Karl', 'Saveley', 'karl.saveley.com', 51425759, '149 Melrose Ave', "Wolski");
INSERT INTO CLIENTS (prenom, nom, adresse_email, telephone, adresse, nom_de_entreprise) VALUES ( 'Rita', 'Mulller', 'rita.muller.com', 51425762, '186 Bayberry Crs', "Reggiani");



-- remplir la table de EMPLOYES:

INSERT INTO EMPLOYES (prenom, nom, adresse_email, telephone, adresse, nom_de_departement) VALUES ( 'Richard', 'Anderson', 'richard.anderson.com', 51425983, '48 Garden Ave', "Materiel");
INSERT INTO EMPLOYES (prenom, nom, adresse_email, telephone, adresse, nom_de_departement) VALUES ( 'Ema', 'Limeira', 'ema.limeira.com', 51424979, '68 Fifeshire Ave', "Materiel");
INSERT INTO EMPLOYES (prenom, nom, adresse_email, telephone, adresse, nom_de_departement) VALUES ( 'Michael', 'Holze', 'michael.holz.com', 51424922, '226 Newton Dr', "Materiel");
INSERT INTO EMPLOYES (prenom, nom, adresse_email, telephone, adresse, nom_de_departement) VALUES ( 'Maurizio', 'Moroni', 'maurizio.moroni.com', 51424221, '23 Blackforest Ave', "Materiel");
INSERT INTO EMPLOYES (prenom, nom, adresse_email, telephone, adresse, nom_de_departement) VALUES ( 'Isabel', 'Sandra', 'isabel.sandra.com', 51424295, '170 Princess Ave', "logiciel");
INSERT INTO EMPLOYES (prenom, nom, adresse_email, telephone, adresse, nom_de_departement) VALUES ( 'Jean', 'Fresnier', 'jean.fresnier.com', 51424353, '87 Goremley Rd', "logiciel");
INSERT INTO EMPLOYES (prenom, nom, adresse_email, telephone, adresse, nom_de_departement) VALUES ( 'Francois', 'Rovelli', 'francois.rovelli.com', 51424773, '121 Shudell Ave', "logiciel");
INSERT INTO EMPLOYES (prenom, nom, adresse_email, telephone, adresse, nom_de_departement) VALUES ( 'Howard', 'Synder', 'howard.synder.com', 51424723, '189 Churchill Ave', "logiciel");


-- remplir la table de DEPARTEMENTS:

INSERT INTO DEPARTEMENTS (domaine, telephone, responsable, employe) VALUES ( 'Logiciel', 51425983, 'Francois Rovelli', 7);
INSERT INTO DEPARTEMENTS (domaine, telephone, responsable, employe) VALUES ( 'MaterieL', 51425984, 'Maurizio.Moroni', 4);


-- remplir la table de COMMANDES:


INSERT INTO COMMANDES (nom_de_instrument, vendeur, Address_physique, client, date_de_reception, date_de_livraison, commentaire) VALUES ( 'Routeur', 'Cisco', '5F01:10B::5AC1::1', '1', '2020-11-23', '2020-12-01', "interface G0/0 a ete remplace");

INSERT INTO COMMANDES (nom_de_instrument, vendeur, Address_physique, client, date_de_reception, date_de_livraison, commentaire) VALUES ( 'Switch', 'Cisco', '5F01:10B::5AC1::1125', '2', '2020-11-24', '2020-12-02', "ventilateur marchait pas bien");

INSERT INTO COMMANDES (nom_de_instrument, vendeur, Address_physique, client, date_de_reception, date_de_livraison, commentaire) VALUES ( 'Firewall', 'Cisco', '5F01:10B::5AC1::1BF4', '3', '2020-11-24', '2020-12-02', "mise a jour des logiciels");

INSERT INTO COMMANDES (nom_de_instrument, vendeur, Address_physique, client, date_de_reception, date_de_livraison, commentaire) VALUES ( 'Bridge', 'Mitrotik', '5F01:10B::5ADE::1BCA', '4', '2020-11-25', '2020-12-03', "boite d'alimentation a ete remplace");

INSERT INTO COMMANDES (nom_de_instrument, vendeur, Address_physique, client, date_de_reception, date_de_livraison, commentaire) VALUES ( 'Modem', 'TPlink', '5F01:10B::5ADE::1ABE', '5', '2020-11-25', '2020-12-03', "changement de carte mere");

INSERT INTO COMMANDES (nom_de_instrument, vendeur, Address_physique, client, date_de_reception, date_de_livraison, commentaire) VALUES ( 'Serveur', 'HP', '5F01:10B::5ADE::1ABE', '6', '2020-12-26', '2020-12-04', "changement de carte reseau");

INSERT INTO COMMANDES (nom_de_instrument, vendeur, Address_physique, client, date_de_reception, date_de_livraison, commentaire) VALUES ( 'Routeur', 'Juniper', '5F01:10B::5ADE::1', '7', '2020-12-26', '2020-12-04', "mise a jour des logiciels");

INSERT INTO COMMANDES (nom_de_instrument, vendeur, Address_physique, client, date_de_reception, date_de_livraison, commentaire) VALUES ( 'Switch', 'Facebook', '5F01:10B::5ADE::4BE9', '8', '2020-12-27', '2020-12-05', "mise a jour des logiciels");

-- remplir la table de SERVICES:










