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
$name = $_POST["name"];
$number = $_POST["number"];
$address = $_POST["Address"];
$date = $_POST["date"];
$phone = $_POST["phone"];

// Prepare and execute SQL statement to insert data into table
$sql = "INSERT INTO book (nameOfProduct, numberOfProduct, address,date,Phonenumber) VALUES ('$name', '$number', '$address','$date','$phone')";

if ($conn->query($sql) === TRUE) {
  echo "you booked successfully!";
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
    <title>book page</title>
    <link rel="stylesheet" href="book.css">
</head>
<body>
    <div class="navbar">
        <h1>Online Shopping and Delivery</h1>
     </div>
     <div class="project">
        <div class="pay">
            <h3>Payment Method</h3>
            <img src="mmmmmmmmmmmmm.jpg" alt="">
        </div>
        <div>
            <form method="POST">
                <label for="">name of product</label>    
                <input type="text" name="name" id="" required /></br>
                <label for="">number of product</label>    
                <input type="text" name="number" id="" required /></br>
                <label for="">Address</label>    
                <input type="text" name="Address" id="" required /></br>
                <label for="">date</label>    
                <input type="date" name="date" id="" required /></br>
                <label for="">phone number</label>    
                <input type="text" name="phone" id="" required /></br>
                <!-- <button><a href="customerpage.php">book</a></button> -->
                <input type="submit" name= "subb" value = "submit" class="submit">
                <button><a href="customerpage.php">back</a></button>
                </form>  
        </div>
     </div>
</body>
</html>