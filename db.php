
<?php
$servername = "localhost";
$username = "dsnalgxr_ad-dsna";
$password = "";
$dbname = "dsnalgxr_ad-dsna";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Get the user's balance
$sql = "SELECT balance FROM Users WHERE id = ?";
$stmt = $conn->prepare($sql);
$stmt->execute([$_SESSION["user_id"]]);
$balance = $stmt->fetchColumn();

// Close connection
$conn->close();
?>
