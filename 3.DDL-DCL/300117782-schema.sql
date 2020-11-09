-- Ma DATABASE
CREATE DATABASE Restaurant_Mamamiya;

-- CRÉER L'UTILISATEUR (Erna) ET SON MOT DE PASSE (password)
CREATE USER 'Erna'@'%' IDENTIFIED BY 'password';

-- DONNER TOUT LES PRIVILÈGES À L'UTILISATEUR Erna
GRANT ALL ON Restaurant_Mamamiya.* TO 'Erna'@'%';

-- ACCÉDER À MA DATABASE 
USE Restaurant_Mamamiya;

-- creation de la table Menu

CREATE TABLE Menu (
Id_menu INT AUTO_INCREMENT NOT NULL,
Nom_du_Menu VARCHAR(25) NOT NULL,
PRIMARY KEY(Id_Menu)
