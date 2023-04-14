<?php
$servername='localhost';
$username='root';
$password='';
$dbname = "arlington_sprouts";
$conn=mysqli_connect($servername,$username,$password,$dbname);
if(!$conn){
   die('Could not Connect My Sql:' .mysqli_error( $mysql));
}
?>