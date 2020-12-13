# :pushpin: BMOlineGaming 
<img src="BMOline3.PNG" height="800" witdth="900"></img> 

# :pushpin: RAPPORTS
--- 
### 1. :bell:Afficher la somme de tous les articles vendu

```
SELECT (montant * quantite) As sommetotal,Nom_Article FROM SERVICES join CLIENTS 
USING (clients) join ARTICLES USING (Article) 
join TYPESARTICLES USING (type_Article)
where Type_Article=1;

```
