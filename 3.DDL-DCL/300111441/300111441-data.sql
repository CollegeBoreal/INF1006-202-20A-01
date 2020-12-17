-- Dans le domaine

USE EMPIRE_POUSSINNY;

-- Les donnees de la table Poulaillers

INSERT INTO POULAILLERS (nbre_male, nbre_femelle) values('1000', '1800');
INSERT INTO POULAILLERS (nbre_male, nbre_femelle) values('2000', '2800');


-- Les donnees de table Medicaments

INSERT INTO MEDICAMENTS (type_medicament, quantite_administre, poulailler) values('injection', '100','1');
INSERT INTO MEDICAMENTS (type_medicament, quantite_administre, poulailler) values('supplement', '70','1');


-- Les donnees de la table Nourriture

INSERT INTO NOURRITURES (type_nourriture, quantite_nourriture, poulailler) values('cereale', '30','1');
INSERT INTO NOURRITURES (type_nourriture, quantite_nourriture, poulailler) values('dechet', '20','1');
INSERT INTO NOURRITURES (type_nourriture, quantite_nourriture, poulailler) values('eau', '10','1');


-- Les donnees de la table Releves

INSERT INTO RELEVES (nbre_ponte, nbre_deces_male, nbre_deces_femelle, poulailler) values('500', '10', '25', '1');
INSERT INTO RELEVES (nbre_ponte, nbre_deces_male, nbre_deces_femelle, poulailler) values('800', '12', '10', '1');
