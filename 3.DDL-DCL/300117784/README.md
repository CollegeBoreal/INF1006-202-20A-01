# :pushpin: BMOlineGaming 
<img src="BMOline3.PNG" height="800" witdth="900"></img> 
---
# :cop: CONTRAINTE TABLE ARTICLES
```
Article INT AUTO_INCREMENT,
Fournisseur INT,
Nom_Article varchar (50),
Type_Article INT,
quantite_Stock INT,
foreign key(Type_Article) references TYPESARTICLES (Type_Article),
foreign key(Fournisseur) references FOURNISSEURS (Fournisseur),
primary key(Article,Fournisseur),
CONSTRAINT quantite_nonzero CHECK(quantite_Stock<>0)

```

# :pushpin: RAPPORTS
--- 
### 1. :bell:Afficher la somme des montants de  tous les articles vendu

```
SELECT (montant * quantite) As sommetotal,Nom_Article FROM SERVICES join CLIENTS 
USING (clients) join ARTICLES USING (Article) 
join TYPESARTICLES USING (type_Article)
where Type_Article=1;

```
--- 
### 2. :bell:Afficher tous les articles qui ont ete depanne a partir de 2020 

```

SELECT Nom_Article FROM SERVICES JOIN TYPESDESERVICES USING(type_Service)
JOIN ARTICLES USING (Article)
WHERE nom_du_Service='depanage' and Date_Services between '2020-00-00' and '2020-12-31';

```
---
### 3. :bell:Afficher le nombre de Jeux 

```
SELECT COUNT(Article) AS NB_Jeux FROM ARTICLES JOIN TYPESARTICLES USING(Type_Article)
WHERE Nom_Type_Article='Jeux';

```
---
# :pushpin: EXPLAIN

### 1. :exclamation: 

