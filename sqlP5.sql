-- Aller a la bdd webDevelopement --
USE `webDevelopment`;
-- Afficher la table languages --
SELECT * FROM `languages`;

-- Afficher les versions de PHP --
SELECT `version`
FROM `languages`
WHERE `language`='php';

-- Afficher les versions de PHP et de JavaScript --
SELECT `version`
FROM `languages`
WHERE `language`='PHP'
OR `language`='JavaScript';

-- Afficher les lignes qui ont les id 3 5 et 7 --
SELECT `id`, `language`, `version`
FROM `languages`
WHERE `id`=3
OR `id`=5
OR `id`=7;
OU
SELECT `id`, `language`, `version`
FROM `languages`
WHERE `id`
IN (3,5,7);

-- Afficher les deux premieres lignes de JavaScript --
SELECT `id`, `language`, `version`
FROM `languages`
WHERE `language`='JavaScript'
LIMIT 2 OFFSET 0;

-- Afficher tout les languages sauf PHP --
SELECT `id`, `language`, `version`
FROM `languages`
WHERE `language`!='PHP';

-- Afficher les languages par ordre alphabétique --
SELECT `id`, `language`, `version`
FROM `languages`
ORDER BY `language`;
