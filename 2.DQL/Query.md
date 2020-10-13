# :ab: Query

## :bookmark: [Participation](.scripts/Participation.md)

## :one: Votre Modele

:pushpin: En utilisant Sakila comme base de données, créer les rapports suivant: 

1. Imprimer le nom et le montant de la facture totale des personnes habitant la ville de Lubumbashi
2. Imprimer le nom et le montant de factures des personnes habitant le Congo ou l'algerie (ANSI-92)
3. Imprimer le nom et le montant de la facture totale des personnes habitant le Congo ou l'Algerie (ANSI-92)
4. Quel(le) acteur(rice) est apparu(e) dans le plus de films?
5. Quel est la longueur moyenne des films par catégorie? Trié par longueur moyenne
6. Quel sont les catégories qui ont les plus longs films (i.e. dépassant la longueur moyenne) ? Trié par longueur moyenne

## :two: Jointures

:pushpin: Vos requetes doivent comporter des jointures

http://code.openark.org/blog/mysql/mysql-joins-on-vs-using-vs-theta-style

```
MySQL joins: ON vs. USING vs. Theta-style
July 11, 2012
What is the difference between the following three syntaxes?

  SELECT * FROM film JOIN film_actor ON (film.film_id = film_actor.film_id)
  SELECT * FROM film JOIN film_actor USING (film_id)
  SELECT * FROM film, film_actor WHERE film.film_id = film_actor.film_id

The difference is mostly syntactic sugar, but with a couple interesting notes.

To put names, the first two are called "ANSI-style" while the third is called "Theta-style".
```

### Examples

- [ ] Projection - SELECT, Jointure - FROM/JOIN, Condition - WHERE

```sql
SELECT * FROM city;

SELECT * FROM country;

SELECT * FROM country WHERE country.country = 'Congo, The Democratic Republic of the';

SELECT city.city FROM city
INNER JOIN country ON (country.country_id = city.country_id)
WHERE country.country = 'Morocco';

SELECT city.city FROM city
INNER JOIN country USING (country_id)
WHERE country.country = 'Italy';
```

:three: Revision de quelques mots clés 


| Mots Clés                                                                      |  Utilisations                                                           |
|--------------------------------------------------------------------------------|-------------------------------------------------------------------------|
| :one: [Projections](https://dzone.com/articles/math-and-sql-part-5-projection) |  Sous-ens                                                               |
| [SELECT](https://www.mysqltutorial.org/mysql-select-statement-query-data.aspx) |                                                                         |
| [DISTINCT](https://www.mysqltutorial.org/mysql-distinct.aspx)                  |                                                                         |
| :two: Conditions                                                               |                                                                         |
| [WHERE](https://www.mysqltutorial.org/mysql-where)                             |                                                                         |
| [AND](https://www.mysqltutorial.org/mysql-and)                                 |                                                                         |
| [OR](https://www.mysqltutorial.org/mysql-or)                                   |                                                                         |
| [IN](https://www.mysqltutorial.org/mysql-in)                                   |                                                                         |
| [BETWEEN](https://www.mysqltutorial.org/mysql-between)                         |                                                                         |
| [LIKE](https://www.mysqltutorial.org/mysql-like)                               |                                                                         |
| IS NULL](https://www.mysqltutorial.org/mysql-like)                             |                                                                         |
| :three: Filtre                                                                 |                                                                         |
| [ORDER BY](https://www.mysqltutorial.org/mysql-order-by)                       |                                                                         |
| [LIMIT](https://www.mysqltutorial.org/mysql-limit)                             |                                                                         |
| Table & Column Aliases                                                         |                                                                         |
| Joins                                                         |                                                                         |
| INNER JOIN                                                         |                                                                         |
| LEFT JOIN                                                         |                                                                         |
| RIGHT JOIN                                                         |                                                                         |
| Self Join                                                         |                                                                         |
| CROSS JOIN                                                         |                                                                         |
| GROUP BY                                                         |                                                                         |
| HAVING                                                         |                                                                         |
| ROLLUP                                                         |                                                                         |
| Subquery                                                         |                                                                         |
| Derived Tables                                                         |                                                                         |
| EXISTS                                                         |                                                                         |
| UNION                                                         |                                                                         |
| MINUS                                                         |                                                                         |
| INTERSECT                                                         |                                                                         |



```
keyword - mots clés

— Imprimer les noms des étudiants admis
SELECT nom FROM etudiants WHERE  notes >= 60 ;

- Selection SELECT

- Table FROM

- Condition WHERE

- Tri ORDER BY

- JOIN Jointure

- Groupement GROUP BY

- HAVING

SUM, AVG, COUNT
```
