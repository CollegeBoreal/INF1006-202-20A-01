INSERT INTO FOURNISSEURS (nom, telephone, email, addresse) VALUES ('ROGERS', '6477777777', 'internet@rogers.ca', '7205 Goreway Dr Kiosk 4');
INSERT INTO FOURNISSEURS (nom, telephone, email, addresse) VALUES ('BELL CANADA', '8663011942', 'internet@bell.ca', '2664 Islington Ave, Etobicoke, ON M9V 2X6');
INSERT INTO FOURNISSEURS (nom, telephone, email, addresse) VALUES ('ALTIMA', '6478888888', 'internet@altima.ca', '570 Alden Rd Unit 1, Markham, ON L3R 8N5');
INSERT INTO FOURNISSEURS (nom, telephone, email, addresse) VALUES ('GEMSTELECOM', '6474784358', 'internet@gemstelecom.ca', '1030 Kamato Rd #204, Mississauga, ON L4W 4B6');

-- next
INSERT INTO ZONES (zone, province) VALUES ('1', 'Alberta');
INSERT INTO ZONES (province) VALUES ('Colombie-Britannique');
INSERT INTO ZONES (province) VALUES ('Île-du-Prince-Édouard');
INSERT INTO ZONES (province) VALUES ('Manitoba');
INSERT INTO ZONES (province) VALUES ('Nouveau-Brunswick');
INSERT INTO ZONES (province) VALUES ('Nouvelle-Écosse');
INSERT INTO ZONES (province) VALUES ('Nunavut');
INSERT INTO ZONES (province, ville, quartier) VALUES ('Ontario', 'ottawa', 'wellington');
INSERT INTO ZONES (province, ville, quartier) VALUES ('Québec', 'montreal', 'laval');
INSERT INTO ZONES (province, ville, quartier) VALUES ('Saskatchewan', 'saskatoon', 'petit prince');
INSERT INTO ZONES (province) VALUES ('Terre-Neuve-et-Labrador\n');
INSERT INTO ZONES (province) VALUES ('Territoires du Nord-Ouest');
INSERT INTO ZONES (province) VALUES ('Yukon');

-- next
INSERT INTO VITESSE (download, upload, fournisseur) VALUES ('120mbps', '30mbps', '3');
INSERT INTO VITESSE (download, upload, fournisseur) VALUES ('100mbps', '25mbps', '1');
INSERT INTO VITESSE (download, upload, fournisseur) VALUES ('75mbps', '15mbps', '1');
INSERT INTO VITESSE (download, upload, fournisseur) VALUES ('70mbps', '15mbps', '2');
INSERT INTO VITESSE (download, upload, fournisseur) VALUES ('60mbps', '10mbps', '4');
INSERT INTO VITESSE (download, upload, fournisseur) VALUES ('60mbps', '5mbps', '4');

-- next
INSERT INTO PRIX (vitesse, prix) VALUES ('1', '79');
INSERT INTO PRIX (vitesse, prix) VALUES ('2', '69');
INSERT INTO PRIX (vitesse, prix) VALUES ('3', '59');
INSERT INTO PRIX (vitesse, prix) VALUES ('4', '49');
INSERT INTO PRIX (vitesse, prix) VALUES ('5', '39');
INSERT INTO PRIX (vitesse, prix) VALUES ('6', '30');

-- next
INSERT INTO ROUTEURS (MAC, vitesse) VALUES ('01:28:79:DD:GG:JH', '1');
INSERT INTO ROUTEURS (MAC, vitesse) VALUES ('01:04:23:PP:UI:LK', '3');
INSERT INTO ROUTEURS (MAC, vitesse) VALUES ('01:08:11:WE:YG:HH', '2');
INSERT INTO ROUTEURS (MAC, vitesse) VALUES ('01:54:93:VP:UQ:MK', '5');
INSERT INTO ROUTEURS (MAC, vitesse) VALUES ('00:08:66:JE:LI:JH', '4');
INSERT INTO ROUTEURS (MAC, vitesse) VALUES ('00:54:88:NE:MA:LK', '6');

-- next
INSERT INTO CLIENTS (nom, prenom, addresse, telephone) VALUES ('ouro', 'zoureni', '1 rue younge', '1');
INSERT INTO CLIENTS (nom, prenom, addresse, telephone) VALUES ('fofana', 'sekou', '1 rue north york', '2');
INSERT INTO CLIENTS (nom, prenom, addresse, telephone) VALUES ('pierre', 'françois', '1 rue amiens', '1');
INSERT INTO CLIENTS (nom, prenom, addresse, telephone) VALUES ('jean', 'luc', '1 rue pie 9 ', '2');
INSERT INTO CLIENTS (nom, prenom, addresse, telephone) VALUES ('marie', 'louis', '1 rue bourassa', '1');
INSERT INTO CLIENTS (nom, prenom, addresse, telephone) VALUES ('anaelle', 'valery', '1 rue  lacordaire', '2');

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