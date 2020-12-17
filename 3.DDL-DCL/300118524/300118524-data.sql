-- Dans le domaine

USE ALL_TELECOM;

-- DONNÉES DE LA TABLE FOURNISSEURS
INSERT INTO FOURNISSEURS (nom, telephone, email, addresse) VALUES ('ROGERS', '6477777777', 'internet@rogers.ca', '7205 Goreway Dr Kiosk 4');
INSERT INTO FOURNISSEURS (nom, telephone, email, addresse) VALUES ('BELL CANADA', '8663011942', 'internet@bell.ca', '2664 Islington Ave, Etobicoke, ON M9V 2X6');
INSERT INTO FOURNISSEURS (nom, telephone, email, addresse) VALUES ('ALTIMA', '6478888888', 'internet@altima.ca', '570 Alden Rd Unit 1, Markham, ON L3R 8N5');
INSERT INTO FOURNISSEURS (nom, telephone, email, addresse) VALUES ('GEMSTELECOM', '6474784358', 'internet@gemstelecom.ca', '1030 Kamato Rd #204, Mississauga, ON L4W 4B6');

-- DONNÉES DE LA TABLE ZONES
INSERT INTO ZONES (province, ville) VALUES ( 'Alberta','Edmonton');
INSERT INTO ZONES (province, ville) VALUES ('Colombie-Britannique', 'Vancouver');
INSERT INTO ZONES (province, ville) VALUES ('Île-du-Prince-Édouard', 'Cornwall' );
INSERT INTO ZONES (province, ville) VALUES ('Manitoba','winnipeg');
INSERT INTO ZONES (province, ville) VALUES ('Nouveau-Brunswick', 'Moncton');
INSERT INTO ZONES (province, ville) VALUES ('Nouvelle-Écosse','Halifax');
INSERT INTO ZONES (province, ville) VALUES ('Nunavut', 'Iqaluit');
INSERT INTO ZONES (province, ville) VALUES ('Ontario', 'ottawa');
INSERT INTO ZONES (province, ville) VALUES ('Québec', 'laval');
INSERT INTO ZONES (province, ville) VALUES ('Saskatchewan', 'saskatoon');
INSERT INTO ZONES (province, ville) VALUES ('Terre-Neuve-et-Labrador', 'Bonavista');
INSERT INTO ZONES (province, ville) VALUES ('Territoires du Nord-Ouest', 'Yellowknife');
INSERT INTO ZONES (province, ville) VALUES ('Yukon', 'Whitehorse');

-- DONNÉES DE LA TABLE VITESSES

INSERT INTO VITESSES (download, upload, fournisseur, prix ) VALUES ('120mbps', '30mbps', '3', '79');
INSERT INTO VITESSES (download, upload, fournisseur, prix) VALUES ('100mbps', '25mbps', '1', '69');
INSERT INTO VITESSES (download, upload, fournisseur, prix) VALUES ('75mbps', '15mbps', '1', '59');
INSERT INTO VITESSES (download, upload, fournisseur, prix) VALUES ('70mbps', '15mbps', '2', '49');
INSERT INTO VITESSES (download, upload, fournisseur, prix) VALUES ('60mbps', '10mbps', '4', '39');
INSERT INTO VITESSES (download, upload, fournisseur, prix) VALUES ('60mbps', '5mbps', '4', '30');



-- DONNÉES DE LA TABLE EQUIPEMENTS
INSERT INTO EQUIPEMENTS (routeur, rj45, coaxial, alimentation) VALUES ('1', '1', '1','1');
INSERT INTO EQUIPEMENTS (routeur, rj45, coaxial, alimentation) VALUES ('1', '0', '1','1');
INSERT INTO EQUIPEMENTS (routeur, rj45, coaxial, alimentation) VALUES ('1', '1', '0','1');
INSERT INTO EQUIPEMENTS (routeur, rj45, coaxial, alimentation) VALUES ('1', '0', '1','1');
INSERT INTO EQUIPEMENTS (routeur, rj45, coaxial, alimentation) VALUES ('1', '1', '1','1');
INSERT INTO EQUIPEMENTS (routeur, rj45, coaxial, alimentation) VALUES ('0', '0', '0','0');


-- DONNÉES DE LA TABLE CLIENTS

INSERT INTO CLIENTS (nom, prenom, addresse, telephone,birthday, zone) VALUES ('ouro', 'zoureni', '1 rue younge', '5147779999','2000-09-09','4');
INSERT INTO CLIENTS (nom, prenom, addresse, telephone, birthday, zone) VALUES ('fofana', 'sekou', '1 rue north york', '2125556767','2000-09-09', '2');
INSERT INTO CLIENTS (nom, prenom, addresse, telephone, birthday, zone) VALUES ('pierre', 'françois', '1 rue amiens', '4380007777','2000-09-09', '3');
INSERT INTO CLIENTS (nom, prenom, addresse, telephone, birthday, zone) VALUES ('jean', 'luc', '1 rue pie 9 ', '6471114444', '2000-09-09', '6');
INSERT INTO CLIENTS (nom, prenom, addresse, telephone, birthday, zone) VALUES ('marie', 'louis', '1 rue bourassa', '5146661111','2000-09-09', '5');
INSERT INTO CLIENTS (nom, prenom, addresse, telephone, birthday, zone) VALUES ('anaelle', 'valery', '1 rue  lacordaire', '8198887575','2000-09-09', '1');


-- DONNÉES DE LA TABLE PRODUITS

INSERT INTO PRODUITS(cable, dsl, fibre, fournisseur, equipement, vitesse) VALUES ( '1', '0', '0','1','2','4');
INSERT INTO PRODUITS(cable, dsl, fibre, fournisseur, equipement, vitesse) VALUES ( '0', '1', '0','1','2','2');
INSERT INTO PRODUITS(cable, dsl, fibre, fournisseur, equipement, vitesse) VALUES ( '0', '0', '1','1','3','1');
INSERT INTO PRODUITS(cable, dsl, fibre, fournisseur, equipement, vitesse) VALUES ( '0', '0', '0','1','4','3');
INSERT INTO PRODUITS(cable, dsl, fibre, fournisseur, equipement, vitesse) VALUES ( '1', '0', '0','2','1','4');
INSERT INTO PRODUITS(cable, dsl, fibre, fournisseur, equipement, vitesse) VALUES ( '0', '1', '0','2','2','2');
INSERT INTO PRODUITS(cable, dsl, fibre, fournisseur, equipement, vitesse) VALUES ( '0', '0', '1','2','3','1');
INSERT INTO PRODUITS(Cable, dsl, fibre, fournisseur, equipement, vitesse) VALUES ( '0', '0', '0','2','4','3');
INSERT INTO PRODUITS(cable, dsl, fibre, fournisseur, equipement, vitesse) VALUES ( '1', '0', '0','3','1','4');
INSERT INTO PRODUITS(cable, dsl, fibre, fournisseur, equipement, vitesse) VALUES ( '0', '1', '0','3','2','2');
INSERT INTO PRODUITS(cable, dsl, fibre, fournisseur, equipement, vitesse) VALUES ( '0', '0', '1','3','3','1');
INSERT INTO PRODUITS(cable, dsl, fibre, fournisseur, equipement, vitesse) VALUES ( '0', '0', '0','3','4','3');
INSERT INTO PRODUITS(cable, dsl, fibre, fournisseur, equipement, vitesse) VALUES ( '1', '0', '0','4','1','4');
INSERT INTO PRODUITS(cable, dsl, fibre, fournisseur, equipement, vitesse) VALUES ( '0', '1', '0','4','2','2');
INSERT INTO PRODUITS(cable, dsl, fibre, fournisseur, equipement, vitesse) VALUES ( '0', '0', '1','4','3','1');
INSERT INTO PRODUITS(cable, dsl, fibre, fournisseur, equipement, vitesse) VALUES ( '0', '0', '0','4','4','3');

-- TABLE DE LA TABLE VENTES

INSERT INTO VENTES( produit, client, telephone) VALUES ('1', '1','5147779999');
INSERT INTO VENTES( produit, client, telephone) VALUES ('3', '2','2125556767');
INSERT INTO VENTES( produit, client, telephone) VALUES ('4', '3','4380007777');
INSERT INTO VENTES( produit, client, telephone) VALUES ('5', '4','6471114444');
INSERT INTO VENTES( produit, client, telephone) VALUES ('6', '5','8198887575');
INSERT INTO VENTES( produit, client, telephone) VALUES ('2', '6','5146661111');

-- test
SELECT ZONES.zone, ZONES.province FROM ZONES
JOIN CLIENTS USING (zone)
JOIN ROUTEURS USING (routeur)
JOIN VITESSE USING (vitesse)
WHERE zone ="1";
