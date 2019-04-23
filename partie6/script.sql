--Partie 6 : Sélection de données - Élargir les possibilités de la clause WHERE

/*
Exercice 1
Dans la table frameworks, afficher toutes les données de la table ayant une version 2.x (x étant un numéro quelconque).
*/
SELECT *
FROM frameworks
WHERE version LIKE ' version 2.%';
+----+-----------+--------------+
| id | framework | version      |
+----+-----------+--------------+
|  1 | Symfony   | version 2.8  |
|  3 | Jquery    | version 1.6  |
|  4 | Jquery    | version 2.10 |
+----+-----------+--------------+
3 rows in set (0.03 sec)

/*
Exercice 2
Dans la table frameworks, afficher toutes les lignes ayant pour id 1 et 3.
*/
SELECT *
  FROM frameworks
  WHERE id='1' || id='3';
  +----+-----------+-------------+
  | id | framework | version     |
  +----+-----------+-------------+
  |  1 | Symfony   | version 2.8 |
  |  3 | Jquery    | version 1.6 |
  +----+-----------+-------------+

/*
Exercice 3
Dans la table ide, afficher toutes les lignes ayant une date comprise entre le premier janvier 2010 et le 31 decembre 2011.
*/
SELECT *
    -> FROM ide
    -> WHERE `date` BETWEEN '2010-01-01' AND '2011-12-31';
+----+----------+---------+------------+
| id | name     | version | date       |
+----+----------+---------+------------+
|  3 | Eclipse  | 3.6     | 2010-06-01 |
|  4 | Eclipse  | 3.7     | 2011-06-01 |
|  6 | NetBeans | 7       | 2011-04-01 |
+----+----------+---------+------------+
