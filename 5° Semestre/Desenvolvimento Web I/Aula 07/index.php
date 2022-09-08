<?php
/*
    Programa: index.php
    Autor: Felipe Perez
    Data: 01/04/2020
*/

require_once("controller/CidadeController.php");

$obj = new CidadeController();
$obj->listar();

?>