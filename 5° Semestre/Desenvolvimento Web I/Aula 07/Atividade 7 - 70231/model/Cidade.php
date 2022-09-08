<?php
/*
    Programa: model/cidade.php
    Autor: Carlos Vinicius
    Data: 01/09/2022
*/

class Cidade{
    private $codcid;
    private $nomecid;
    private $uf;
    private $conn;

    public function __construct(){
        $this->connectaBD();
    }

    private function connectaBD(){
        $server="localhost";
        $user="root";
        $pass="";
        $mydb="vendas";

        $this->conn = new mysqli($server,$user,$pass,$mydb);

        if($this->conn->connect_error){
            die("Conexão Falhou: ".$conn->connect_error);
        }
    }

    public function getCodCid(){
        return $this->codcid;
    }
    public function setCodCid($codcid)
    {
        $this->codcid=$codcid;
    }
    public function getNomeCid(){
        return $this->nomecid;
    }
    public function setNomeCid($nomecid)
    {
        $this->nomecid=$nomecid;
    }
    public function getUF(){
        return $this->uf;
    }
    public function setUF($uf){
        $this->uf=$uf;
    }

    public function create(){
        $sql = "INSERT INTO cidade (NOMECID, UF) VALUES ('".$this->getNomeCid."','".$this->getUF."')";

        $this->conn->query($sql);
    }

    public function update(){
        $sql = "UPDATE cidade SET NOMECID='".$this->getNomeCid()."',UF='".$this->getUF()."' WHERE CODCID=".$this->getCodCid();
        
        $this->conn->query($sql);
    }
    public function delete(){
        $sql = "DELETE FROM cidade WHERE CODCID=".$this->getCodCid();
        
        $this->conn->query($sql);
    }

    public function read(){
        $sql = "SELECT * FROM cidade";

        $returnValue = array();

        $result = $this->conn->query($sql);
        if($result != null){
            while($row = $result->fetch_array(MYSQLI_ASSOC)){
                if(!empty($row)){
                    array_push($returnValue,$row);
                }
            }
        }

        return $returnValue;
    }

}

?>