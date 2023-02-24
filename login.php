<?php
// Start session
session_start();

// Check if the form has been submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
	// Get email and password from the form
	$email = $_POST["email"];
	$password = $_POST["password"];

	// Check if email and password are correct
	if ($email == "benitha@gmail.com" && $password == "1234567890") {
		// Store user data in session
		$_SESSION["user_email"] = $email;

		// Redirect to home page or dashboard
		header("Location: dashboard.php");
		exit();
	} else {
		// Display error message
		echo "Incorrect email or password.";
	}
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>login</title>
    <link rel="stylesheet" href="login.css">
</head>
<body>
    <div class="navbar">
        <h1>Online Shopping and Delivery</h1>
     </div>
    <div class="page">
    <form>
    <h3>Login here....</h3>
    <label for="">Email</label>    
    <input type="text" name="Email" id="Email"/></br>
    <label for="">Pass</label>
    <input type="password" name="password" id="password"/></br>
    <button class="click"><a href="dashboard.php">Login</a></button>
    </form>  
    </div>
</body>
</html>