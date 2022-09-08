<?php
$server = "localhost";
$user = "root";
$pass = ""; $mydb = "vendas";
$conn = new mysqli($server, $user, 
$pass, $mydb);
if($conn->connect_error){
if($result->num_rows > 0){
    while($row = $result->fetch_assoc()) 
    {
     echo json_encode($row);
    }
     }
    }
?>