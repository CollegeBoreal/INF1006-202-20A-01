-- MON DATABASE
CREATE DATABASE ALL_TELECOM;

-- CRÉER L'UTILISATEUR (zoureni) ET SON MOT DE PASSE (password)
CREATE USER 'zoureni'@'%' IDENTIFIED BY 'password';

-- DONNER TOUT LES PRIVILÈGES À L'UTILISATEUR (zoureni) '%' = tout les addresses
GRANT ALL ON ALL_TELECOM.* TO 'zoureni'@'%';

-- ACCÉDER À MON DATABASE 300118524
USE ALL_TELECOM;

-- CRÉER TABLE CLIENT
CREATE TABLE client (
    id_client VARCHAR(15),
    nom_client VARCHAR(24),
    address_client VARCHAR(50)
    );
    
-- CRÉER TABLE FOURNISSEURS
CREATE TABLE fournisseurs (
    id_fournisseurs VARCHAR(15),
    nom_fournisseurs VARCHAR(24),
    address_fournisseurs VARCHAR(50)
    );
-- CRÉER TABLE CONNEXION
CREATE TABLE connexion (
    connexion_cable BOOLEAN,
    connexion_DSL BOOLEAN,
    );
