-- Partie 5 : Sélection de données
/*
Exercice 1
Dans la table languages, afficher toutes les données de la table.
*/
SELECT `language`, `version`
  FROM `languages`;
+------------+-------------+
| language   | version     |
+------------+-------------+
| Javascript | version 5   |
| PHP        | version 5.2 |
| PHP        | version 5.4 |
| HTML       | version 5.1 |
| Javascript | version 6   |
| Javascript | version 7   |
| Javascript | version 8   |
| PHP        | version 7   |
+------------+-------------+
8 rows in set (0.00 sec)

/*
Exercice 2
Dans la table languages, afficher toutes les versions de Javascript.
*/
SELECT `language`, `version`
  FROM `languages`
  WHERE `language`='Javascript';
+----+------------+-----------+
| id | language   | version   |
+----+------------+-----------+
|  1 | Javascript | version 5 |
|  5 | Javascript | version 6 |
|  6 | Javascript | version 7 |
|  7 | Javascript | version 8 |
+----+------------+-----------+
4 rows in set (0.04 sec)

/*
Exercice 3
Dans la table languages, afficher toutes les versions de PHP et de JavaScript.
*/
SELECT `language`, `version`
  FROM `languages`
  WHERE `language`='Javascript' OR language='PHP';

/*ou */
  SELECT `language`, `version`
    FROM `languages`
    WHERE `language` IN ('PHP', 'JavaScript');
+----+------------+-------------+
| id | language   | version     |
+----+------------+-------------+
|  1 | Javascript | version 5   |
|  2 | PHP        | version 5.2 |
|  3 | PHP        | version 5.4 |
|  5 | Javascript | version 6   |
|  6 | Javascript | version 7   |
|  7 | Javascript | version 8   |
|  8 | PHP        | version 7   |
+----+------------+-------------+
7 rows in set (0.01 sec)

/*
Exercice 4
Dans la table languages, afficher toutes les lignes ayant pour id 3,5,7.
*/
SELECT `id`, `language`, `version`
  FROM `languages`
  WHERE `id`=3 OR `id`=5 OR `id`=7;

  /*ou*/

  SELECT `id`, `language`, `version`
    FROM `languages`
    WHERE `id` IN (3, 5, 7);
+----+------------+-------------+
| id | language   | version     |
+----+------------+-------------+
|  3 | PHP        | version 5.4 |
|  5 | Javascript | version 6   |
|  7 | Javascript | version 8   |
+----+------------+-------------+
3 rows in set (0.07 sec)

/*
Exercice 5
Dans la table languages,afficher les deux première entrées de JavaScript.
*/
SELECT `id`, `language`, `version`
  FROM `languages`
  ORDER BY `id`
  WHERE `langage` = 'Javascript'
  LIMIT 2;
  +----+------------+-------------+
  | id | language   | version     |
  +----+------------+-------------+
  |  1 | Javascript | version 5   |
  |  5 | JavaScript | version 6   |
  +----+------------+-------------+
  2 rows in set (0.03 sec)

  /*
  Exercice 6
  Dans la table languages, afficher toutes les lignes qui ne sont pas du PHP
  */
  SELECT `id`, `language`, `version`
    FROM `languages`
    WHERE `language` <> 'PHP';
    +----+------------+-------------+
    | id | language   | version     |
    +----+------------+-------------+
    |  1 | Javascript | version 5   |
    |  4 | HTML       | version 5.1 |
    |  5 | Javascript | version 6   |
    |  6 | Javascript | version 7   |
    |  7 | Javascript | version 8   |
    +----+------------+-------------+
    5 rows in set (0.00 sec)

/*SI on veut ne pas afficher deux choses*/
    SELECT `language`
      FROM `languages`
      WHERE `language` <> 'PHP' AND `language` <> 'JavaScript';
/*
Exercice 7
Dans la table languages,afficher toutes les données par ordre alphabétique.
*/
SELECT `id`, `language`, `version`
  FROM `languages`
  ORDER BY `language` ASC;
  +----+------------+-------------+
  | id | language   | version     |
  +----+------------+-------------+
  |  4 | HTML       | version 5.1 |
  |  1 | Javascript | version 5   |
  |  5 | Javascript | version 6   |
  |  6 | Javascript | version 7   |
  |  7 | Javascript | version 8   |
  |  2 | PHP        | version 5.2 |
  |  3 | PHP        | version 5.4 |
  |  8 | PHP        | version 7   |
  +----+------------+-------------+
