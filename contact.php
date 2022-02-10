<?php
// Create connection

$conn = new mysqli("localhost", "root", "", "telecom");

// Check connection

if ($conn->connect_error) {
die("Connection failed: " . $conn->connect_error);
}
else{
  echo "Sup bitches";
}
echo "<p>Entered data is : " . "</p>";
echo "First Name is : " . $_POST["first_name"] . "</p>";
echo "Last Name is  : " . $_POST["last_name"] . "</p>";
echo "Email is  : " . $_POST["email"] . "</p>";
echo "Phone number is  : " . $_POST["phone"] . "</p>";
echo "Comment : " . $_POST["comments"] . "</p>";
$f_name = $_POST["first_name"];
$l_name = $_POST["last_name"];
$email = $_POST["email"];
$phone = $_POST["phone"];
$comment = $_POST["comments"];
//$sql = "INSERT INTO `contact` (`first_name`, `last_name`, `email`, `phone_num`, `comment`) VALUES (\'$f_name\', \'$l_name\', \'$email\', \'$phone\', \'$comment\');";
//echo "<p>" . $sql . "</p>";
$sql = "INSERT INTO `contact` (`first_name`, `last_name`, `email`, `phone_num`, `comment`) VALUES ('shyamsundar', 'iyanger', 'slkfjsl@shanda.com', 'sdflksjdjflsd');";
if ($conn->query($sql) == TRUE) {
  echo "New record created successfully";
} else {
  echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
?>
