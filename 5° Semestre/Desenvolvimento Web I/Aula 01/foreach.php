<?php

    $arr = array();
    $arr[1] = 1;
    $arr["nome"] = "Felipe";
    $arr["sobrenome"] = "Perez";
    $arr[5] = "Teste";

    foreach($arr as $key => $value){
        echo $key." => ".$value."<br>";
    }

?>