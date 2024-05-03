<?php
    $host = "compose-postgres";
    $dbname = "gestion_produits";
    $username = "postgres_user";
    $password = "postgres_password";
    $port = 5432; 

    try {
        $dsn = "pgsql:host=$host;port=$port;dbname=$db;";
        $conn = new PDO($dsn, $username, $password);
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        echo "Connected successfully";
    } catch (PDOException $e) {
        die("Erreur de connexion à la base de données: " . $e->getMessage());
    }
?>