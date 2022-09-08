<?php

    include_once("conexao.php");

    echo "<br>";

    $sql = "INSERT INTO `vendedor`(`NOMEVEND`, `CODSETOR`, `SALARIO`) VALUES ('Felipe Pereira Perez',1,500)";

    if($conn->query($sql) === TRUE){
        echo "Novo registro inserido: ".$sql;
    }else{
        echo "Error: ".$conn->error;
    }


?>