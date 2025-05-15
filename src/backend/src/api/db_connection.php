<?php
// api/db_connection.php

/**
 * Get database connection
 * 
 * @return PDO
 */
function getDatabaseConnection() {
    $host = getenv('DB_ENDPOINT');      // Database host (change to your RDS endpoint in production)
    $db_name = getenv('DB_NAME');   // Database name
    $username = getenv('DB_USER');  ;       // Database username
    $password = getenv('DB_PASSWORD');          // Database password
    
    $dsn = "mysql:host=$host;dbname=$db_name;charset=utf8mb4";
    $options = [
        PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
        PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
        PDO::ATTR_EMULATE_PREPARES => false,
    ];
    
    return new PDO($dsn, $username, $password, $options);
}
?>