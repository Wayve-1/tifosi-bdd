
-- Création de la base
CREATE DATABASE tifosi CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- Création de l’utilisateur
CREATE USER 'tifosi'@'localhost' IDENTIFIED BY '*Mot*De*Passe*123!*';

-- Attribution des droits
GRANT ALL PRIVILEGES ON tifosi.* TO 'tifosi'@'localhost';
FLUSH PRIVILEGES;



USE tifosi;

/* TABLES */

-- Table Client
CREATE TABLE Client (
    id_client INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
        nom VARCHAR(50) NOT NULL,
        email VARCHAR(50) NOT NULL,
        code_postal INT NOT NULL
);

-- Table Ingredient 
CREATE TABLE Ingredient (
    id_ingredient INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nom VARCHAR(50) NOT NULL
);


-- Table Marque
CREATE TABLE Marque (
    id_marque INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nom VARCHAR(50) NOT NULL
);

-- Table Foccacia
CREATE TABLE Foccacia(
    id_foccacia INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nom VARCHAR(50) NOT NULL,
    prix DECIMAL(5,2) NOT NULL

);

-- Table Menu
CREATE TABLE Menu (
    id_menu INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nom VARCHAR(50) NOT NULL,
    prix DECIMAL(5,2) NOT NULL
);


-- Table Boisson
CREATE TABLE Boisson (
    id_boisson INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nom VARCHAR(50) NOT NULL,
    id_marque INT NOT NULL,
    FOREIGN KEY (id_marque) REFERENCES Marque(id_marque)
);


/* RELATIONS */

-- Relation est_constitué
CREATE TABLE Menu_Foccacia (
    id_menu INT NOT NULL,
    id_foccacia INT NOT NULL,
    PRIMARY KEY (id_foccacia, id_menu),
    FOREIGN KEY (id_menu) REFERENCES Menu (id_menu),
    FOREIGN KEY (id_foccacia) REFERENCES Foccacia (id_foccacia)
);

-- Relation contient
CREATE TABLE Menu_boisson (
id_boisson INT NOT NULL,
id_menu INT NOT NULL,
PRIMARY KEY (id_boisson, id_menu),
FOREIGN KEY (id_menu) REFERENCES Menu (id_menu),
FOREIGN KEY (id_boisson) REFERENCES Boisson (id_boisson)
);

-- Relation comprend
CREATE TABLE Foccacia_Ingredient (
    id_foccacia INT NOT NULL,
    id_ingredient INT NOT NULL,
    quantite INT NOT NULL,
    PRIMARY KEY (id_foccacia, id_ingredient),
    FOREIGN KEY (id_foccacia) REFERENCES Foccacia (id_foccacia),
    FOREIGN key (id_ingredient) REFERENCES Ingredient (id_ingredient)
);

-- relation Achete
CREATE TABLE Achat (
    id_client INT NOT NULL,
    id_menu INT NOT NULL,
    date_achat DATE NOT NULL,
    PRIMARY KEY (id_client, id_menu),
    FOREIGN KEY (id_client) REFERENCES Client (id_client),
    FOREIGN key (id_menu) REFERENCES Menu (id_menu)
);