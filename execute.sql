-- 1. Afficher la liste des noms des focaccias par ordre alphabétique croissant
SELECT nom 
FROM Foccacia 
ORDER BY nom ASC;
-- Résultat attendu : 
-- Américaine
-- Emmentalaccia
-- Gorgonzollaccia
-- Hawaienne
-- Mozaccia
-- Paysanne
-- Raclaccia
-- Tradizione

-- Résultat obtenu :
-- Américaine
-- Emmentalaccia
-- Gorgonzollaccia
-- Hawaienne
-- Mozaccia
-- Paysanne
-- Raclaccia
-- Tradizione

-- Commentaire : Résultat attendu = résultat obtenu

-- 2. Afficher le nombre total d'ingrédients
SELECT COUNT(*) 
FROM Ingredient;

-- Résultat attendu : 25
-- Résultat obtenu : 25
-- Commentaire : Résultat attendu = résultat obtenu

-- 3. Afficher le prix moyen des focaccias
SELECT AVG(prix) 
FROM Foccacia;

-- Résultat attendu : 10.375
-- Résultat obtenu : 10.45
-- Commentaire : Un problème d'arrondi ?

-- 4. Afficher la liste des boissons avec leur marque, triée par nom de boisson
SELECT b.nom, m.nom
FROM Boisson b
JOIN Marque m
ON b.id_marque = m.id_marque ORDER BY b.nom;

-- Résultat attendu :
-- Coca-cola zéro		Coca-cola
-- Coca-cola original		Coca-cola
-- Fanta citron		Coca-cola
-- Fanta orange		Coca-cola
-- Capri-sun		Coca-cola
-- Pepsi		Pepsico
-- Pepsi Max Zéro		Pepsico
-- Lipton zéro citron		Pepsico
--Lipton Peach		Pepsico
-- Monster energy ultra gold		Monster
-- Monster energy ultra blue		Monster
-- Eau de source 		Cristalline

-- Résultat obtenu :
--Capri-sun	Coca-Cola
-- Coca-Cola original	Coca-Cola
-- Coca-Cola zéro	Coca-Cola
-- Eau de source	Cristalline
-- Fanta citron	Coca-Cola
-- Fanta orange	Coca-Cola
-- Lipton Peach	Pepsico
-- Lipton Zéro citron	Pepsico
-- Monster energy ultra blue	Monster
-- Monster energy ultra gold	Monster
-- Pepsi	Pepsico
-- Pepsi Max Zéro	Pepsico

-- Commentaire : L'ordre n'est pas le même.

-- 5. Afficher la liste des ingrédients pour une Raclaccia
SELECT i.nom AS ingredient
FROM Foccacia_Ingredient fi
JOIN Ingredient i ON fi.id_ingredient = i.id_ingredient
JOIN Foccacia f ON fi.id_foccacia = f.id_foccacia
WHERE f.nom = 'Raclaccia';

-- Résultat attendu : Base tomate, raclette, cresson, ail, champignon, parmesan, poivre
-- Résultat obtenu : Ail, Base Tomate, Champignon, Cresson, Parmesan, Poivre, Raclette
-- Commentaire : Les ingrédients ne sont pas listés dans le même ordre

-- 6. Afficher le nom et le nombre d'ingrédients pour chaque foccacia
SELECT f.nom, COUNT(fi.id_ingredient)
FROM Foccacia f
LEFT JOIN Foccacia_Ingredient fi
ON f.id_foccacia = fi.id_foccacia
GROUP BY f.nom;

-- Résultat attendu :
-- Mozaccia	10
-- Gorgonzollaccia	8
-- Raclaccia	7
-- Emmentalaccia	7
-- Tradizione	9
-- Hawaienne	9
-- Américaine	7
-- Paysanne	12

-- Résultat obtenu :
-- Mozaccia	10
-- Gorgonzollaccia	8
-- Raclaccia	7
-- Emmentalaccia	7
-- Tradizione	9
-- Hawaienne	9
-- Américaine	7
-- Paysanne	12
-- Commentaire : Résultat attendu = résultat obtenu

-- 7 7. Afficher le nom de la focaccia qui a le plus d'ingrédients
SELECT f.nom 
FROM Foccacia f 
JOIN Foccacia_Ingredient fi 
ON f.id_foccacia = fi.id_foccacia 
GROUP BY f.nom 
ORDER BY COUNT(fi.id_ingredient) 
DESC LIMIT 1;

-- Résultat attendu : Paysanne
-- Résultat obtenu : Paysanne
-- Commentaire : Résultat attendu = résultat obtenu

-- 8. Afficher la liste des focaccia qui contiennent de l'ail
SELECT DISTINCT f.nom 
FROM Foccacia f 
JOIN Foccacia_Ingredient fi 
ON f.id_foccacia = fi.id_foccacia 
JOIN Ingredient i
ON fi.id_ingredient=i.Id_ingredient
WHERE i.nom = 'ail';

-- Résultat attendu : Mizaccia, Gorgonzollaccia, Raclaccia, Paysanne
-- Résultat obtenu : Mizaccia, Gorgonzollaccia, Raclaccia, Paysanne
-- Commentaire : Résultat attendu = résultat obtenu

-- 9. Afficher la liste des ingrédients inutilisés
SELECT nom 
FROM Ingredient i 
LEFT JOIN Foccacia_Ingredient fi 
ON i.id_ingredient = fi.id_ingredient 
WHERE fi.id_ingredient IS NULL;

-- Résultat attendu : Salami et tomate cerise
-- Résultat obtenu : Salami et tomate cerise
-- Commentaire : Résultat attendu = résultat obtenu

-- 10. Afficher la liste des focaccia qui n'ont pas de champignons
SELECT f.nom 
FROM Foccacia f 
WHERE f.id_foccacia NOT IN 
(SELECT fi.id_foccacia FROM Foccacia_Ingredient fi JOIN Ingredient i 
ON fi.id_ingredient = i.id_ingredient WHERE i.nom LIKE '%Champignon%');

-- Résultat attendu :  Hawaienne Américaine
-- Résultat obtenu : Hawaienne Américaine
-- Commentaire : Résultat attendu = résultat obtenu