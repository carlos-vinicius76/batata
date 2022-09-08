<?php

class Cadastro{
    private $nome;
    private $Idade;
    private $CPF;
    
    public function __construct(){
        $this->Idade=0;
        $this->CPF=0;
    }

    public function setNome($nome){
        $this->nome = $nome;
    }
    public function setIdade($Idade){
        $this->Idade = $Idade;
    }
    public function setCPF($CPF){
        $this->CPF = $CPF;
    }
    public function getNome(){
        return $this->nome;
    }
    public function getIdade(){
        return $this->Idade;
    }
    public function getCPF(){
        return $this->CPF;
    }

}

?>