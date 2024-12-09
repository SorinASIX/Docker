<?php
class Database {
    public static function getConnection() {
        $host = getenv('DB_HOST');
        $user = getenv('DB_USER');
        $password = getenv('DB_PASSWORD');
        $database = getenv('DB_NAME');
        $connection = new mysqli($host, $user, $password, $database);
        if ($connection->connect_error) {
            die("Connection failed: " . $connection->connect_error);
        }
        return $connection;
    }
}
?>
