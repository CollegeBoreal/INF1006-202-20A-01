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
INSERT INTO VITESSES (download, upload, fournisseur) VALUES ('120mbps', '30mbps', '3');
INSERT INTO VITESSES (download, upload, fournisseur) VALUES ('100mbps', '25mbps', '1');
INSERT INTO VITESSES (download, upload, fournisseur) VALUES ('75mbps', '15mbps', '1');
INSERT INTO VITESSES (download, upload, fournisseur) VALUES ('70mbps', '15mbps', '2');
INSERT INTO VITESSES (download, upload, fournisseur) VALUES ('60mbps', '10mbps', '4');
INSERT INTO VITESSES (download, upload, fournisseur) VALUES ('60mbps', '5mbps', '4');


-- DONNÉES DE LA TABLE PRIX
INSERT INTO PRIX (vitesse, prix) VALUES ('1', '79');
INSERT INTO PRIX (vitesse, prix) VALUES ('2', '69');
INSERT INTO PRIX (vitesse, prix) VALUES ('3', '59');
INSERT INTO PRIX (vitesse, prix) VALUES ('4', '49');
INSERT INTO PRIX (vitesse, prix) VALUES ('5', '39');
INSERT INTO PRIX (vitesse, prix) VALUES ('6', '30');

-- DONNÉES DE LA TABLE EQUIPEMENTS
INSERT INTO EQUIPEMENTS (routeur, rj45, coaxial, alimentation) VALUES ('1', '1', '1','1');
INSERT INTO EQUIPEMENTS (routeur, rj45, coaxial, alimentation) VALUES ('1', '0', '1','1');
INSERT INTO EQUIPEMENTS (routeur, rj45, coaxial, alimentation) VALUES ('1', '1', '0','1');
INSERT INTO EQUIPEMENTS (routeur, rj45, coaxial, alimentation) VALUES ('1', '0', '1','1');
INSERT INTO EQUIPEMENTS (routeur, rj45, coaxial, alimentation) VALUES ('1', '1', '1','1');
INSERT INTO EQUIPEMENTS (routeur, rj45, coaxial, alimentation) VALUES ('0', '0', '0','0');


-- NEXT
INSERT INTO FACTURES (client, prix, facture) VALUES ('1','109', '79');
INSERT INTO FACTURES (client, prix, facture) VALUES ('2', '39', '39');
INSERT INTO FACTURES (client, prix, facture) VALUES ('3', '49', '49');
INSERT INTO FACTURES (client, prix, facture) VALUES ('4', '59', '59');
INSERT INTO FACTURES (client, prix, facture) VALUES ('5', '69', '69');
INSERT INTO FACTURES (client, prix, facture) VALUES ('6', '30', '30');





-- test
SELECT ZONES.zone, ZONES.province FROM ZONES
JOIN CLIENTS USING (zone)
JOIN ROUTEURS USING (routeur)
JOIN VITESSE USING (vitesse)
WHERE zone ="1";
