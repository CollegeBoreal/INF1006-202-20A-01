==============================================
 --               DJIB-12
==============================================
--Table employe 
===============================================
CREATE TABLE 'table_employe'
(
  `idTable_employee` int(11) NOT NULL,
  `Prenom` varchar(45) NOT NULL,
  `Nom` varchar(45) NOT NULL,
  `Poste` varchar(45) NOT NULL,
  `Bureau` varchar(45) NOT NULL,
  `Salaire` varchar(45) NOT NULL,
  `Commission` varchar(45) DEFAULT NULL,
  `Embauche` varchar(45) DEFAULT NULL,
  `table_employeecol` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idTable_employee`)
============================================================
--Table fournisseur 
=============================================================
CREATE TABLE 'fournisseur'
 (
  `idFournisseur` INT NOT NULL,
  `Nom` VARCHAR(45) NOT NULL,
  `Adresse` VARCHAR(45) NOT NULL,
  `Telephone` VARCHAR(45) NOT NULL,
  `Interlocuteur` VARCHAR(45) NOT NULL,
  `Delai_livraison` VARCHAR(45) NULL,
  PRIMARY KEY (`idFournisseur`)); 
=================================================================
--Table Produits 
=================================================================
CREATE TABLE `table_produits` 
(
  `idtable_produits` INT NOT NULL,
  `Description` VARCHAR(45) NOT NULL,
  `Prix` VARCHAR(45) NULL,
  PRIMARY KEY (`idtable_produits`));
