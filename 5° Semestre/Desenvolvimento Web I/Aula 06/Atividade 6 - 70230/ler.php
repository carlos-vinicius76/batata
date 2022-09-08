<?php

    include_once("conexao.php");

    echo "<br><br>";

    $sql = "SELECT * FROM vendedor";

    $result = $conn->query($sql);

    if($result->num_rows > 0){
        while($row = $result->fetch_assoc()){
            echo "Nome Vendedor: ".$row["NOMEVEND"]."<br>";
        }
    }

?>