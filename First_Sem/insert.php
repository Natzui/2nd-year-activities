
<?php
include 'db.php'; // connect to database

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $name     = $_POST['name'];
    $email    = $_POST['email'];
    $password = $_POST['password'];
    $confirm  = $_POST['confirm_password'];

    // Check if passwords match
    if ($password !== $confirm) {
        echo "<p style='color:red;'>❌ Passwords do not match.</p>";
        echo "<a href='register.php'>Go Back</a>";
        exit();
    }

    // Hash password
    $hashedPassword = password_hash($password, PASSWORD_DEFAULT);

    $sql = "INSERT INTO users (name, email, password) VALUES ('$name', '$email', '$hashedPassword')";

    if ($conn->query($sql) === TRUE) {
        echo "<p style='color:green;'>✅ User registered successfully!</p>";
        echo "<a href='view.php'>View Users</a> | <a href='register.php'>Register Another</a>";
    } else {
        echo "<p style='color:red;'>❌ Error: " . $conn->error . "</p>";
    }
}
?>