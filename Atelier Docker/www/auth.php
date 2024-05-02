<?php
    if (isset($_POST['US_login']) && isset($_POST['US_password'])) {
        session_start();
        include 'connect.php';

        $US_login = htmlspecialchars($_POST['US_login']);
        $US_password = htmlspecialchars($_POST['US_password']);

        try {
            
            $sql = "SELECT * FROM utilisateurs WHERE US_login = :login AND US_password = :password";
            $stmt = $pdo->prepare($sql);
            $stmt->bindParam(':login', $US_login);
            $stmt->bindParam(':password', hash('sha256', $US_password)); // Utilisation de la fonction de hachage SHA256

            $stmt->execute();

            
            if ($stmt->rowCount() > 0) {
                $utilisateur = $stmt->fetch(PDO::FETCH_ASSOC);
                $_SESSION['login'] = $utilisateur['US_login'];
                header("Location: home.php");
                exit;
            } else {
                header("Location: index.php");
                exit;
            }
        } catch (PDOException $e) {
           
            header("Location: BADUSER.html");
            exit;
        }
    }
?>
