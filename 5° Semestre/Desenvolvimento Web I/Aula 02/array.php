<?php

    $arr["nome"] = "Felipe Perez";
    $arr["idade"] = 30;
    $arr["cidade"] = "Dourados";

    print_r($arr);

    $arr = [];
    $arr["MS"] = "Mato Grosso do Sul";
    $arr["SP"] = "São Paulo";
    $arr["PR"] = "Paraná";

    $capital["MS"] = "Campo Grande";
    $capital["SP"] = "São Paulo";
    $capital["PR"] = "Curitiba";

    echo "<br><br>";
    foreach ($arr as $key => $value) {
        echo $key." - ".$value." - capital: ".$capital[$key]."<br>";
    }

    echo "<br><br>";
    $arr = [];
    $arr["MS"]["estado"]="Mato Grosso do Sul";
    $arr["SP"]["estado"]="São Paulo";
    $arr["PR"]["estado"]="Paraná";

    $arr["MS"]["capital"]="Campo Grande";
    $arr["SP"]["capital"]="São Paulo";
    $arr["PR"]["capital"]="Curitiba";

    foreach($arr as $sigla => $value){
        echo $sigla." - ".$value["estado"]." - capital: ".$value["capital"]."<br>";
    }

?>