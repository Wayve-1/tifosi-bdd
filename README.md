   Tifosi - Base de données de focaccias et boissons

   Description
Tifosi est une base de données MySQL destinée à gérer un catalogue de focaccias, ingrédients, boissons, menus et clients.

Elle permet de :  
- Lister les focaccias et leurs ingrédients,  
- Associer des boissons et des marques,  
- Gérer les achats des clients,  
- Faire des requêtes de vérification et d’analyse.

---
   Technologies utilisées
- **MySQL** (gestion de la base de données)
- **Workbench** (administration)
- **SQL** (création des tables et requêtes)

---

   Installation
 1. Créer la base de données.
sql :
CREATE DATABASE tifosi CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

 3. Création des Tables.
 Utiliser schema.sql
La création d'un utilisateur ainsi que l'attribution des droits sont en haut du script.
En suite, il y a la création des Tables et des Relations nécessaire à l'utilisation de la BDD.

 5. Insertion des données
 Utiliser insert_date.sql
Permet d'ajouter les données dans les tables correspondantes.

 6. Requête.
 Utiliser execute.sql
Permet d'afficher les 10 requêtes demandés.
On y trouve en commentaire, les résultats et les commentaires en lien avec chacune des requêtes. 
