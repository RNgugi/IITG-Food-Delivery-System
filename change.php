<?php
$conn = new mysqli("localhost", "root", "", "roomdelivery");
session_start();

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}


$oid = $_POST['submit'];
$tim = date("H,i,s,d,m,Y");
echo $tim;
$sql = "update orders SET isdelivered = '1' , time = '$tim' where oid ='$oid' ";

if ($conn->query($sql) === TRUE) {
    echo "Record updated successfully";
} else {
    echo "Error updating record: " . $conn->error;
}

   header("location:orders.php");      
   exit();

?>