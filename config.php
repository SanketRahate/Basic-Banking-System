<?php
$servername="localhost";
$username="root";
$password="";
$dbname="city bank";
//Create connection
$conn=new mysqli($servername,$username,$password,$dbname);
//Check connection
if($conn->connect_error)
{
	die("Unable to connect ".$conn->connect_error);
}
?>

