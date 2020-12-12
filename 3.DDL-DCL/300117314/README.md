

# :zap: Mortimaintenance est une compagnie qui fournit les maintenances des équipements techniques:zap:

:star: la base de données de cette compagnie est basée sur 5 tables reliées, dans lesquelles on sauvegarde des informations concernant ses employés, ses clients, ses départements, ses services offerts et les commandes faites par cette compagnie. 


## :zap: Le schéma des relatiosn dans la base de données :zap:

![image](image/7.PNG)

#  :pushpin: la politique de la compagnie concernant ses données:


## :one: L'adresse-email et numéro de téléphone de chaque employé doivent être uniques:     



![image](image/6.PNG)

##  :two: la personne en charge de chaque département soit unique:


![image](image/8.PNG)

##  :three: L'adresse-email de chaque client soit unique:

![image](image/9.PNG)


##  :four: le moment où on supprime un client de la table CLIENTS, on n'aura plus ses informations dans les autres tables reliées :

![image](image/10.PNG)

## :pushpin::star:For example, si l'on supprime le client numéro 1, on n'aura plus ses information dans la table COMMANDES:

![image](image/1.PNG)

## :ok_hand:

![image](image/2.PNG)

## :ok_hand:
![image](image/3.PNG)

## :ok_hand:

![image](image/4.PNG)

## :white_check_mark:

![image](image/5.PNG)

## :white_check_mark:
