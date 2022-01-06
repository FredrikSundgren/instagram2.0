<?php

$host = 'localhost';
$db = 'InstagramDatabase';
$user = 'root';
$password = 'root';

try {
    $pdo = new PDO("mysql:host=$host;dbname=$db", $user, $password);
    echo "Woho!";
} catch(PDOException $e) {
    echo "Connection failed: " . $e->getMessage();
  }

?>
