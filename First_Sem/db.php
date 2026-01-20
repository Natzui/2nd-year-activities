<?php
$servername = "localhost";
$username = "root"; // default phpMyAdmin user
$password = ""; // leave blank if no password
$database = "netflix_users"; // same name as created above

$conn = mysqli_connect($servername, $username, $password, $database);

if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}
?>
