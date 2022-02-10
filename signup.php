<?php

$con=new mysqli("localhost","root","","telecom");
if($con->connect_error){
 	die("connectionfaild");
} 
echo <<<EOL
<style>
#sign_up{
	display : none;
}
</style>
EOL
$name =$_POST["name"];
$email=$_POST["email"];
$date=date("Y-M-D");
$mphone=$_POST["mobile"];
$phone=$_POST["home_phone"];
$address=$_POST["address"];
$password=$_POST["password"];
$con_password=$_POST["con_password"];

$sql = "INSERT INTO Customer(identity_card_no,name,email,registration_date,mobile_ph,home_ph,address,password) values ('5000','$name','$email','$date','$mphone','$phone','$address','$password')";

echo "<p>Firstname= " .$name . "</p>";
echo "<p>email= " .$email . "</p>";
echo "<p>phone= " .$phone . "</p>";
echo "<p>password =" .$password . "</p>";
echo "<p>con_pass=" .$con_password . "</p>";
echo "<p>phone= " .$mphone . "</p>";
echo "<p>address= " .$address . "</p>";
echo "<p>date= " .$date . "</p>";

if($con->query($sql) == TRUE){
	echo "sup bitches";
}
else{
	echo "needs work";
}

$con->close();
?>
