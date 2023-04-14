<?php
extract($_POST);
include("database.php");
$sql=mysqli_query($conn,"SELECT * FROM item where i_name='$name'");
if(mysqli_num_rows($sql)>0)
{
    echo "Item Name Already Exists"; 
	exit;
}
else
{
    $query="INSERT INTO item(i_name, s_price) VALUES ('$name', '$s_price')";
    $sql=mysqli_query($conn,$query)or die("Could Not Perform the Query");
    header ("Location: ItemView.php?status=success");
}

?>