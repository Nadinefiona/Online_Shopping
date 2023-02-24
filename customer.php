<?php
// variables in your MySQL server settings
$host = "localhost";
$username = "fiona";
$password = "nadinefiona123";
$dbname = "shopping";

// Create connection
$conn = new mysqli($host, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

// Get form data
$firstname = $_POST["firstname"];
$lastname = $_POST["lastname"];
$gender = $_POST["Gender"];
$age = $_POST["age"];
$address = $_POST["address"];
$phone = $_POST["phone"];
$email = $_POST["email"];
$text = $_POST["text1"];
$password = $_POST["password"];

// Prepare and execute SQL statement to insert data into table
$sql = "INSERT INTO customer (fname, lname, gender,age,address,telephone,email,comment,password) 
VALUES ('$firstname', '$lastname', '$gender','$age','$address','$phone','$email','$text','$password')";

if ($conn->query($sql) === TRUE) {
  echo "you are successfully registered !!";
} else {
  echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
?>





<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration Form</title>
    <link rel="stylesheet" href="customer.css">
</head>
<body>
    <div class="navbar">
        <h1>Online Shopping and Delivery</h1>
    </div>
    <form method="POST" action="">
        <label for="">FirstName</label>    
        <input type="text" name="firstname" id="" required /></br>
        <label for="">LastName</label>    
        <input type="text" name="lastname" id=""  required /></br>
        <label for="" class="c">Gender</label>
        <input type="radio" name="Gender" id="" required>female
        <input type="radio" name="Gender" id="" required>male<br>
        <label for="">Age</label>    
        <input type="text" name="age" id="" required /></br>
        <label for="">Address</label>    
        <input type="text" name="address" id="" required /></br>
        <label for="">Telephone</label>    
        <input type="text" name="phone" id="" required /></br>
        <label for="">Email</label>    
        <input type="email" name="email" id="" required /></br>
        <label for="">Comment</label>    
        <input type="text" name="text1" id="" required /></br>
        <label for="">Password</label>    
        <input type="password" name="password" id="" required /></br>
        <!-- <button><a href="customerpage.php">Submit</a></button> -->
        <input type="submit" name= "subb" value = "submit" class="submit">
        <button><a href="clickhere.php">back</a></button>
    </form>  
</body>
</html>