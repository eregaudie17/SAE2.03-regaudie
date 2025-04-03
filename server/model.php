<?php
/**
 * Ce fichier contient toutes les fonctions qui réalisent des opérations
 * sur la base de données, telles que les requêtes SQL pour insérer, 
 * mettre à jour, supprimer ou récupérer des données.
 */

/**
 * Définition des constantes de connexion à la base de données.
 *
 * HOST : Nom d'hôte du serveur de base de données, ici "localhost".
 * DBNAME : Nom de la base de données
 * DBLOGIN : Nom d'utilisateur pour se connecter à la base de données.
 * DBPWD : Mot de passe pour se connecter à la base de données.
 */
define("HOST", "localhost");
define("DBNAME", "regaudie4");
define("DBLOGIN", "regaudie4");
define("DBPWD", "regaudie4");


function getAllMovies(){
    $cnx = new PDO("mysql:host=".HOST.";dbname=".DBNAME, DBLOGIN, DBPWD);
    $sql = "select id, name, image from Movie";
    $stmt = $cnx->prepare($sql);
    $stmt->execute();
    $res = $stmt->fetchAll(PDO::FETCH_OBJ);
    return $res;
}

function addMovie($t, $r, $a1, $d1, $d2, $c, $a2, $u, $a3){
    $cnx = new PDO("mysql:host=".HOST.";dbname=".DBNAME, DBLOGIN, DBPWD);
    $sql = "INSERT INTO Movie (name, year, length, description, director, id_categorie, image, trailer, min_age)
            VALUES (:name, :year, :length, :description, :director, :id_categorie, :image, :trailer, :min_age)";
    $stmt = $cnx->prepare($sql);
    $stmt->bindParam(':name', $t);
    $stmt->bindParam(':year', $r);
    $stmt->bindParam(':length', $a1);
    $stmt->bindParam(':description', $d1);
    $stmt->bindParam(':director', $d2);
    $stmt->bindParam(':id_categorie', $c);
    $stmt->bindParam(':image', $a2);
    $stmt->bindParam(':trailer', $u);
    $stmt->bindParam(':min_age', $a3);

    $stmt->execute();
    $res = stmt->rowCount();
    return $res;
}