<?php  
    /*
    Programa: Atividade 4 Q2 - 70227.php
    Autor: Carlos Vinicius da Silva
    Data: 30/08/2022
    */  
    include_once("Atividade 4 Q1 - 70228.class.php");

    $obj = new Cadastro();

    $obj->setNome(" Carlos Vinicius da Silva  ");
    $obj->setIdade("45");
    $obj->setCPF("742.899.42-91");

    echo " Nome inserido no Cadastro: ".$obj->getNome().
         " Idade inserida no Cadastro:".$obj->getIdade().
         " CPF inserido no Cadastro: " .$obj->getCPF();

    include_once("Atividade 4 Q2 - 70228.class.php");

    $obj = new Medico();

    $obj->setNome(" Fulano da Silva  ");
    $obj->setCRM("123456"); 
    echo " Nome inserido no Cadastro: ".$obj->getNome().
         " CRM inserido no Cadastro: " .$obj->getCRM();
?>