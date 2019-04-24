/*
Partie 8 : Les jointures
Toutes les tables à utiliser sont dans le fichier bdd.sql
*/

/*CORRECTION */
/*Exo 1 :*/

SELECT languages.name, frameworks.name
FROM `languages`
LEFT JOIN `frameworks`
ON frameworks.languagesId = languages.id;


/*Exo 2 :*/

SELECT languages.name, frameworks.name
FROM `languages`
INNER JOIN `frameworks`
ON frameworks.languagesId = languages.id;

/*Exo 3 :   */
SELECT COUNT(frameworks.name) AS frameworks
  FROM `languages`
  INNER JOIN `frameworks`
  ON frameworks.languagesId = languages.id
  --point commun entre les deux tables,  frameworks.languagesId = clé étrangére
  GROUP BY languages.name;
--GROUP BY ne peut pas etre utiliser avec un WHERE
-- Regrouper les langages similaires


/*Exo 4 :*/

SELECT languages.name,COUNT(frameworks.name) AS `moreThreeFrameworks`
FROM `languages`
INNER JOIN `frameworks`
ON frameworks.languagesId = languages.id
GROUP BY languages.name
HAVING `moreThreeFrameworks` > 3;
--Cela permet donc de SÉLECTIONNER les colonnes DE la table “nom_table” en GROUPANT
--les lignes qui ont des valeurs identiques sur la colonne “colonne1” et que la condition
--de HAVING soit respectée.
/*

/*
Exercice 1
Afficher tous les frameworks associés à leurs langages. Si un langage n'a pas de framework l'afficher aussi.
*/
SELECT *
    ->    FROM frameworks
    ->    RIGHT JOIN languages
    ->    ON frameworks.languagesId = languages.id;
+------+---------------+-------------+----+------------+
| id   | name          | languagesId | id | name       |
+------+---------------+-------------+----+------------+
|    1 | Qt            |           3 |  3 | C++        |
|    2 | SDK Android   |           4 |  4 | Java       |
|    3 | Bootstrap     |           6 |  6 | CSS        |
|    4 | Foundation    |           6 |  6 | CSS        |
|    5 | KNACSS        |           6 |  6 | CSS        |
|    6 | Avalanche     |           6 |  6 | CSS        |
|    7 | Miligram      |           6 |  6 | CSS        |
|    8 | Skeleton      |           6 |  6 | CSS        |
|    9 | Hoisin        |           6 |  6 | CSS        |
|   10 | Inuit         |           6 |  6 | CSS        |
|   11 | Mimic         |           6 |  6 | CSS        |
|   12 | Ministrap     |           6 |  6 | CSS        |
|   13 | Lotus         |           6 |  6 | CSS        |
|   14 | Jquery        |           7 |  7 | JavaScript |
|   15 | Angular       |           7 |  7 | JavaScript |
|   16 | ReactJS       |           7 |  7 | JavaScript |
|   17 | Vue.js        |           7 |  7 | JavaScript |
|   18 | Ember.js      |           7 |  7 | JavaScript |
|   19 | Meteor.js     |           7 |  7 | JavaScript |
|   20 | Laravel       |           8 |  8 | PHP        |
|   21 | Symfony       |           8 |  8 | PHP        |
|   22 | CodeIgniter   |           8 |  8 | PHP        |
|   23 | Yii           |           8 |  8 | PHP        |
|   24 | Phalcon       |           8 |  8 | PHP        |
|   25 | Lumen         |           8 |  8 | PHP        |
|   26 | Silex         |           8 |  8 | PHP        |
|   27 | Slim          |           8 |  8 | PHP        |
|   28 | .NET          |           9 |  9 | C#         |
|   29 | .NET          |          10 | 10 | VB         |
|   30 | Django        |          11 | 11 | Python     |
|   31 | Ruby On Rails |          12 | 12 | Ruby       |
| NULL | NULL          |        NULL |  1 | Assembleur |
| NULL | NULL          |        NULL |  2 | C          |
| NULL | NULL          |        NULL |  5 | HTML       |
| NULL | NULL          |        NULL | 13 | Swift      |
+------+---------------+-------------+----+------------+
35 rows in set (0.07 sec)


/*
Exercice 2
Afficher tous les frameworks associés à leurs langages. Si un langage n'a pas de framework ne pas l'afficher.
*/
SELECT *
   -> FROM frameworks
   -> INNER JOIN languages
   -> ON frameworks.languagesId = languages.id;
+----+---------------+-------------+----+------------+
| id | name          | languagesId | id | name       |
+----+---------------+-------------+----+------------+
|  1 | Qt            |           3 |  3 | C++        |
|  2 | SDK Android   |           4 |  4 | Java       |
|  3 | Bootstrap     |           6 |  6 | CSS        |
|  4 | Foundation    |           6 |  6 | CSS        |
|  5 | KNACSS        |           6 |  6 | CSS        |
|  6 | Avalanche     |           6 |  6 | CSS        |
|  7 | Miligram      |           6 |  6 | CSS        |
|  8 | Skeleton      |           6 |  6 | CSS        |
|  9 | Hoisin        |           6 |  6 | CSS        |
| 10 | Inuit         |           6 |  6 | CSS        |
| 11 | Mimic         |           6 |  6 | CSS        |
| 12 | Ministrap     |           6 |  6 | CSS        |
| 13 | Lotus         |           6 |  6 | CSS        |
| 14 | Jquery        |           7 |  7 | JavaScript |
| 15 | Angular       |           7 |  7 | JavaScript |
| 16 | ReactJS       |           7 |  7 | JavaScript |
| 17 | Vue.js        |           7 |  7 | JavaScript |
| 18 | Ember.js      |           7 |  7 | JavaScript |
| 19 | Meteor.js     |           7 |  7 | JavaScript |
| 20 | Laravel       |           8 |  8 | PHP        |
| 21 | Symfony       |           8 |  8 | PHP        |
| 22 | CodeIgniter   |           8 |  8 | PHP        |
| 23 | Yii           |           8 |  8 | PHP        |
| 24 | Phalcon       |           8 |  8 | PHP        |
| 25 | Lumen         |           8 |  8 | PHP        |
| 26 | Silex         |           8 |  8 | PHP        |
| 27 | Slim          |           8 |  8 | PHP        |
| 28 | .NET          |           9 |  9 | C#         |
| 29 | .NET          |          10 | 10 | VB         |
| 30 | Django        |          11 | 11 | Python     |
| 31 | Ruby On Rails |          12 | 12 | Ruby       |
+----+---------------+-------------+----+------------+
31 rows in set (0.00 sec)

/*
Exercice 3
Afficher le nombre de framework qu'a un langage.
*/
SELECT languages.name, COUNT(frameworks.name) FROM frameworks INNER JOIN languages ON frameworks.languagesId = languages.id
+------------+------------------------+
| name       | COUNT(frameworks.name) |
+------------+------------------------+
| C#         |                      1 |
| C++        |                      1 |
| CSS        |                     11 |
| Java       |                      1 |
| JavaScript |                      6 |
| PHP        |                      8 |
| Python     |                      1 |
| Ruby       |                      1 |
| VB         |                      1 |
+------------+------------------------+
9 rows in set (0.00 sec)

/*ou */

SELECT languages.name, COUNT(frameworks.name)
FROM frameworks
INNER JOIN languages
ON frameworks.languagesId = languages.id
GROUP BY languages.name;
+------------+------------------------+
| name       | COUNT(frameworks.name) |
+------------+------------------------+
| C#         |                      1 |
| C++        |                      1 |
| CSS        |                     11 |
| Java       |                      1 |
| JavaScript |                      6 |
| PHP        |                      8 |
| Python     |                      1 |
| Ruby       |                      1 |
| VB         |                      1 |
+------------+------------------------+
9 rows in set (0.00 sec)


/*
Exercice 4
Afficher les langages ayant plus de 3 frameworks.
*/
SELECT COUNT(frameworks.name)
FROM frameworks
INNER JOIN languages
ON frameworks.languagesId = languages.id
GROUP BY languages.name
HAVING COUNT(frameworks.name) > 3;

+------------------------+
| COUNT(frameworks.name) |
+------------------------+
|                     11 |
|                      6 |
|                      8 |
+------------------------+
3 rows in set (0.00 sec)
