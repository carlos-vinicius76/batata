<?php
/*
    Programa: controller/CidadeController.php
    Autor: Felipe Perez
    Data: 01/04/2020
*/

require_once("model/Cidade.php");

class CidadeController{
    public function listar(){
        $cidade = new Cidade();

        $cidades = $cidade->read();

        $_REQUEST["cidades"] = $cidades;

        require_once("view/cidade_view.php");
    }
}

?>