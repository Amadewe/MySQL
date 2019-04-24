-- Partie 7 : Suppression et modification de données
/*
Exercice 1
Dans la table languages, supprimer toutes les lignes parlant de HTML.
*/
DELETE FROM languagesWHERE name LIKE '%HTML%';
/* ou */
DELETE FROM languagesWHERE id = 8;
/*
Exercice 2
Dans la table frameworks, modifier toutes les lignes ayant le framework Symfony par Symfony2.
*/
mysql> UPDATE frameworks
    -> SET framework='Symfony 2'
    -> WHERE framework='Symfony';
Query OK, 2 rows affected (0.10 sec)
Rows matched: 2  Changed: 2  Warnings: 0

mysql> SELECT framework, id FROM frameworks;
+-----------+----+
| framework | id |
+-----------+----+
| Symfony 2 |  1 |
| Symfony 2 |  2 |
| Jquery    |  3 |
| Jquery    |  4 |
+-----------+----+
4 rows in set (0.00 sec)

/*
Exercice 3
Dans la table languages, modifier la ligne du langage JavaScript version 5 par la version 5.1
*/
mysql> UPDATE languages
    -> SET version='version 5.1'
    -> WHERE version='version 5';
/*Correction*/
    UPDATE languages SET version='version 5' WHERE version='version 5.1' AND language='Javascript';
Query OK, 1 row affected (0.07 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> SELECT *
    -> FROM languages;
+----+------------+-------------+
| id | language   | version     |
+----+------------+-------------+
|  1 | Javascript | version 5.1 |
|  2 | PHP        | version 5.2 |
|  3 | PHP        | version 5.4 |
|  5 | Javascript | version 6   |
|  6 | Javascript | version 7   |
|  7 | Javascript | version 8   |
|  8 | PHP        | version 7   |
+----+------------+-------------+
7 rows in set (0.00 sec)
