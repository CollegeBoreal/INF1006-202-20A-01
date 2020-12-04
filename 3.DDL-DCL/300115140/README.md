# ÊTRE BIEN: Base de données pour la vente en ligne de produits de santé et cosmétiques +vente de services de soins aux personnes

<img src="https://github.com/CollegeBoreal/INF1006-202-20A-01/blob/master/3.DDL-DCL/300115140/images/Eblogo.png" width="250">

## Sommaire:

  1. Description
  2. Reverse Engineering
  3. Contraintes DDL: un exemple
  4. Requêtes liées aux rapports


## Description:

Cette base de données représente un magasin en ligne qui vend des produits et des services sur le site etrebien.com 
Nous enregistrons les ventes, les données des clients et informations des fournisseurs ainsi que les détails de la vente des services et des produits par catégorie.


:whale:

## Reverse Engineering:

Voici le schéma des relations entre tables selon le procédé Reverse Engineer:



![image](images/eng17.PNG) 

## Exemple de contrainte DDL

Je fais une contrainte DDL sur la table VENTES_DE_PROD

CREATE TABLE `VENTES_DE_PROD` (  
  `vente_de_prod` int NOT NULL AUTO_INCREMENT,  
  `client` int NOT NULL,  
  `produit` int NOT NULL,  
  `Prix` int NOT NULL,  
  `Date_de_vente` date DEFAULT NULL,  
  PRIMARY KEY (`vente_de_prod`,`client`,`produit`),   
  KEY `client` (`client`),  
  KEY `produit` (`produit`),   
  CONSTRAINT `VENTES_DE_PROD_ibfk_1` FOREIGN KEY (`client`) REFERENCES `CLIENTS` (`client`),  
  CONSTRAINT `VENTES_DE_PROD_ibfk_2` FOREIGN KEY (`produit`) REFERENCES `PRODUITS` (`produit`)   
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci  


## Requêtes liées aux rapports:

**1. Séléctionner tous les clients qui ont achetés des produits au moins de septembre 2020, leur nom, et le nombre de produits achetés par client:**

SELECT PRODUITS.produit, VENTES_DE_PROD.Date_de_vente, CLIENTS.Nom, SUM(VENTES_DE_PROD.client) FROM PRODUITS  
JOIN VENTES_DE_PROD USING (produit)  
JOIN CLIENTS USING (client)  
GROUP BY PRODUITS.produit, VENTES_DE_PROD.Date_de_vente, CLIENTS.Nom;  

Résultat:

<img src="https://github.com/CollegeBoreal/INF1006-202-20A-01/blob/master/3.DDL-DCL/300115140/images/req1.PNG" width="450">


**2. Séléctionner tous les services rendus par BIOCAMP:**



**3. Séléctionner le nombre d'exfoliant vendus en 2020:**



**4. Séléctionner le nombre de client qui ont eu recours à un service de soins en septembre 2020:**








