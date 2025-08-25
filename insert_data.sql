-- Insertion Marque
INSERT INTO Marque (nom) VALUES
('Coca-Cola'),
('Pepsico'),
('Monster'),
('Cristalline');

-- Insertion Boisson
INSERT INTO Boisson (nom, id_marque) VALUES
('Coca-Cola zéro', 1),
('Coca-Cola original', 1),
('Fanta citron', 1),
('Fanta orange', 1),
('Capri-sun', 1),
('Pepsi', 2),
('Pepsi Max Zéro', 2),
('Lipton Zéro citron', 2),
('Lipton Peach', 2),
('Monster energy ultra gold', 3),
('Monster energy ultra blue', 3),
('Eau de source', 4);

-- Insertion Ingredient
INSERT INTO Ingredient (nom) VALUES
('Ail'),
('Ananas'),
('Artichaut'),
('Bacon'),
('Base Tomate'),
('Base crème'),
('Champignon'),
('Chèvre'),
('Cresson'),
('Emmental'),
('Gorgonzola'),
('Jambon cuit'),
('Jambon fumé'),
('Oeuf'),
('Oignon'),
('Olive noire'),
('Olive verte'),
('Parmesan'),
('Piment'),
('Poivre'),
('Pomme de terre'),
('Raclette'),
('Salami'),
('Tomate cerise'),
('Mozarella');

-- Insertion Foccacia
INSERT INTO Foccacia (nom, prix) VALUES
('Mozaccia', 9.80),
('Gorgonzollaccia', 10.80),
('Raclaccia', 8.90),
('Emmentalaccia', 9.80),
('Tradizione', 8.90),
('Hawaienne', 11.80),
('Américaine', 10.80),
('Paysanne', 12.80);

-- Insertion Menu
INSERT INTO Menu (nom, prix) VALUES
('Menu Pizza', 12.50),
('Menu Raclaccia', 10.00);

-- Insertion Menu_boisson
-- INSERT INTO Menu_boisson (id menu, id_boisson) VALUES

-- Insertion Menu_foccacia
-- INSERT INTO Menu_boisson (id menu, id_foccacia) VALUES

-- Insertion Foccacia_Ingredient
-- Mozaccia
INSERT INTO Foccacia_Ingredient (id_foccacia, id_ingredient, quantite) VALUES
(1, 5, 200), -- Base Tomate
(1, 25, 50), -- Mozzarella
(1, 9, 20),  -- Cresson
(1, 13, 80), -- Jambon fumé
(1, 1, 2),   -- Ail
(1, 3, 20),  -- Artichaut
(1, 7, 40),  -- Champignon
(1, 18, 50), -- Parmesan
(1, 20, 1),  -- Poivre
(1, 16, 20); -- Olive noire

-- Gorgonzollaccia
INSERT INTO Foccacia_Ingredient (id_foccacia, id_ingredient, quantite) VALUES
(2, 5, 200), -- Base Tomate
(2, 11, 50), -- Gorgonzola
(2, 9, 20),  -- Cresson
(2, 1, 2),   -- Ail
(2, 7, 40),  -- Champignon
(2, 18, 50), -- Parmesan
(2, 20, 1),  -- Poivre
(2, 16, 20); -- Olive noire

-- Raclaccia
INSERT INTO Foccacia_Ingredient (id_foccacia, id_ingredient, quantite) VALUES
(3, 5, 200), -- Base Tomate
(3, 22, 50), -- Raclette
(3, 9, 20),  -- Cresson
(3, 1, 2),   -- Ail
(3, 7, 40),  -- Champignon
(3, 18, 50), -- Parmesan
(3, 20, 1);  -- Poivre

-- Emmentalaccia
INSERT INTO Foccacia_Ingredient (id_foccacia, id_ingredient, quantite) VALUES
(4, 6, 200), -- Base Crème
(4, 10, 50), -- Emmental
(4, 9, 20),  -- Cresson
(4, 7, 40),  -- Champignon
(4, 18, 50), -- Parmesan
(4, 20, 1),  -- Poivre
(4, 15, 20); -- Oignon

-- Tradizione
INSERT INTO Foccacia_Ingredient (id_foccacia, id_ingredient, quantite) VALUES
(5, 5, 200), -- Base Tomate
(5, 25, 50), -- Mozzarella
(5, 9, 20),  -- Cresson
(5, 12, 80), -- Jambon cuit
(5, 7, 40),  -- Champignon
(5, 18, 50), -- Parmesan
(5, 20, 1),  -- Poivre
(5, 16, 20), -- Olive noire
(5, 17, 20); -- Olive verte

-- Hawaienne
INSERT INTO Foccacia_Ingredient (id_foccacia, id_ingredient, quantite) VALUES
(6, 5, 200), -- Base Tomate
(6, 25, 50), -- Mozzarella
(6, 9, 20),  -- Cresson
(6, 4, 80),  -- Bacon
(6, 2, 40),  -- Ananas
(6, 19, 2),  -- Piment
(6, 18, 50), -- Parmesan
(6, 20, 1),  -- Poivre
(6, 16, 20); -- Olive noire

-- Américaine
INSERT INTO Foccacia_Ingredient (id_foccacia, id_ingredient, quantite) VALUES
(7, 5, 200),  -- Base Tomate
(7, 25, 50),  -- Mozzarella
(7, 9, 20),   -- Cresson
(7, 4, 80),   -- Bacon
(7, 21, 40),  -- Pomme de terre
(7, 18, 50),  -- Parmesan
(7, 20, 1);   -- Poivre

-- Paysanne
INSERT INTO Foccacia_Ingredient (id_foccacia, id_ingredient, quantite) VALUES
(8, 6, 200),  -- Base Crème
(8, 8, 50),   -- Chèvre
(8, 9, 20),   -- Cresson
(8, 21, 80),  -- Pomme de terre
(8, 13, 80),  -- Jambon fumé
(8, 1, 2),    -- Ail
(8, 3, 20),   -- Artichaut
(8, 7, 40),   -- Champignon
(8, 18, 50),  -- Parmesan
(8, 20, 1),   -- Poivre
(8, 16, 20),  -- Olive noire
(8, 14, 50);  -- Œuf



-- Insertion Client
INSERT INTO Client (nom, email, code_postal) VALUES
('Jean Dupont', 'jean.dupont@email.com', 75001);

-- Insertion Achat
INSERT INTO Achat (id_client, id_menu, date_achat) VALUES
(1, 1, '2025-08-19');

