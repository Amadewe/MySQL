amandine@amandine-HP-ZBook-15-G3:~$ sudo mysql -uroot
[sudo] Mot de passe de amandine :
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 2
Server version: 5.7.25-0ubuntu0.18.10.2 (Ubuntu)

Copyright (c) 2000, 2019, Oracle and/or its affiliates. All rights reserved.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> SHOW DATABASES
    -> ;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
4 rows in set (0.09 sec)


-- clear : ctrl l

/* Exercice 1
Créer une base de données languages
    CREATE DATABASE est une requête (donc il faut mettre des maj)
*/
mysql> CREATE DATABASE languages;
Query OK, 1 row affected (0.00 sec)

/*
Exercice 2
Créer une base de données webDevelopment avec l’encodage UTF-8.
*/
mysql> CREATE DATABASE webDevelopment CHARACTER SET 'utf8';
Query OK, 1 row affected (0.00 sec)

-- verification de nos bases de données avec la requête SHOW DATABASES
mysql> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| languages          |
| mysql              |
| performance_schema |
| sys                |
| webDevelopment     |
+--------------------+
6 rows in set (0.00 sec)

/*
Exercice 3
Créer une base de données frameworks avec l’encodage UTF-8 si elle n’existe pas.
la commande IF NOT EXISTS permet de vérifier si elle existe et ça permet d'éviter une erreur si elle existe déjà
*/
mysql> CREATE DATABASE IF NOT EXISTS frameworks CHARACTER SET 'utf8';
Query OK, 1 row affected, 1 warning (0.00 sec)
/*
Exercice 4
Créer une base de données languages avec l’encodage UTF-8 si elle n’existe pas.
*/
mysql> CREATE DATABASE IF NOT EXISTS languages CHARACTER SET 'utf8';
Query OK, 1 row affected, 1 warning (0.00 sec)
/*
Exercice 5
Supprimer la base de données languages.
*/
mysql> DROP DATABASE languages;
Query OK, 0 rows affected (0.22 sec)
/*Exercice 6
Supprimer la base de données frameworks si elle existe.*/
mysql> DROP DATABASE IF EXISTS frameworks;
Query OK, 0 rows affected (0.00 sec)
/*Exercice 7
Supprimer la base de données languages si elle existe.
si on ne mettait pas le if exist alors que notre base n'existe pas il nous aurait bloqué les autres commande (si il y en avait plusieurs)*/
mysql> DROP DATABASE IF EXISTS languages;
Query OK, 0 rows affected, 1 warning (0.00 sec)

mysql> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| sys                |
| webDevelopment     |
+--------------------+
5 rows in set (0.00 sec)
