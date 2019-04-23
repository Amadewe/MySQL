-- Partie 2 : Création de tables
-- pour aller dans la bonne base de donnée il faut d'abord taper:
USE webDevelopment;
/*
Exercice 1
Dans la base de données webDevelopment, créer la table languages avec les colonnes :

    id (type INT, auto-incrémenté, clé primaire)
    language (type VARCHAR)
*/
CREATE TABLE languages (
  -- l'id est unique
  -- int pour les caractères
  -- AUTO_INCREMENT
  -- PRIMARY KEY CLÉ UNIQUE POUR L'ID UNIQUE qui va faire la différence si une personne à le même prénom et nom  // identifiant unique
  id INT AUTO_INCREMENT PRIMARY KEY,
  -- entre () nombre de caracthère max dans la colonne
  language VARCHAR(50)
  )
  -- moteur de fonctionnement de notre table, nous on va se baser sur innodb car nos tables auront des rélations entre elles.
  ENGINE=INNODB;

/*
  magique cote pour chaque champs, base de données, table
  alt gr 7

Exercice 2
Dans la base de données webDevelopment, créer la table tools avec les colonnes suivantes :
    id (type INT, auto-incrémenté, clé primaire)
    tool (type VARCHAR)
*/
  CREATE TABLE `tools` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `tool` VARCHAR(50)
    )
    ENGINE=INNODB;
/*
Exercice 3
Dans la base de données webDevelopment, créer la table frameworks avec les colonnes suivantes :
    id (type INT, auto-incrémenté, clé primaire)
    name (type VARCHAR)
*/
CREATE TABLE `frameworks` (
  `id` INT AUTO_INCREMENT PRIMARY KEY,
  `name` VARCHAR(50)
  )
  ENGINE=INNODB;

/*
Exercice 4
Dans la base de données webDevelopment, créer la table libraries avec les colonnes suivantes :
    id (type INT, auto-incrémenté, clé primaire)
    library (type VARCHAR)
*/
CREATE TABLE `librairies` (
  `id` INT AUTO_INCREMENT PRIMARY KEY,
  `library` VARCHAR(50)
  )
  ENGINE=INNODB;
/*
Exercice 5
Dans la base de données webDevelopment, créer la table ide avec les colonnes suivantes :
    id (type INT, auto-incrémenté, clé primaire)
    ideName (type VARCHAR)
*/
CREATE TABLE `ide` (
  `id` INT AUTO_INCREMENT PRIMARY KEY,
  `ideName` VARCHAR(50)
  )
  ENGINE=INNODB;

/*Exercice 6
Dans la base de données webDevelopment, créer, si elle n'existe pas, la table frameworks avec les colonnes suivantes :
    id (type INT, auto-incrémenté, clé primaire)
    name (type VARCHAR)
*/
CREATE TABLE IF NOT EXISTS `frameworks` (
  `id` INT AUTO_INCREMENT PRIMARY KEY,
  `name` VARCHAR(50)
  )
  ENGINE=INNODB;

/*
Exercice 7
Supprimer la table tools si elle existe.
*/
DROP TABLE IF EXISTS tools;
Query OK, 0 rows affected (0.17 sec)

/*
Exercice 8
Supprimer la table libraries
*/
DROP TABLE librairies;
Query OK, 0 rows affected (0.18 sec)

/*
Exercice 9
Supprimer la table ide
*/
DROP TABLE ide;
Query OK, 0 rows affected (0.18 sec)


/*
TP
Créer la base codex. Y créer une table clients qui aura comme colonnes :
Colonnes 	Type 	Attributs
id 	INT 	Auto-incrémenté, clé primaire
lastname 	VARCHAR
firstname 	VARCHAR
birthDate 	DATE
address 	VARCHAR
firstPhoneNumber 	INT
secondPhoneNumber 	INT
mail 	VARCHAR
*/
CREATE DATABASE `codex` CARACTER SET 'utf8';
CREATE TABLE `clients` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `lastname` VARCHAR(50),
    `firstname` VARCHAR(50),
    `birthDate` DATE,
    `adress` VARCHAR(250),
    `firstPhoneNumber` INT,
    `secondPhoneNumber` INT,
    `mail` VARCHAR(300)
    )
    ENGINE=INNODB;
