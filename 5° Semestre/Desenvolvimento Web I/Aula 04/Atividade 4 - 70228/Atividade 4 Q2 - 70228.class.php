<?php

class Medico{
    private $nome;
    private $CRM;
    
    public function __construct(){
        $this->CRM=0;
    }

    public function setNome($nome){
        $this->nome = $nome;
    }
    public function setCRM($CRM){
        $this->CPF = $CRM;
    }
    public function getNome(){
        return $this->nome;
    }
    public function getCRM(){
        return $this->CRM;
    }

}

?>