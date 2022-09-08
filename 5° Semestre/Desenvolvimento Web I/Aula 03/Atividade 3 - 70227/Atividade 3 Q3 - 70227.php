<?php  
    /*
    Programa: Atividade 3 Q3 - 70227.php
    Autor: Carlos Vinicius da Silva
    Data: 30/08/2022
    */  
    if($_SERVER["REQUEST_METHOD"]==="POST"){
        $arr["nome"] = filter_input(INPUT_POST,'nome',FILTER_SANITIZE_SPECIAL_CHARS);
        $arr["Idade"] = filter_input(INPUT_POST,'Idade',FILTER_SANITIZE_SPECIAL_CHARS);
        
        $imc["valor"]= $arr["Idade"];
        if($imc["valor"]<18){
            $imc["classificacao"]="Não Pode Votar";
        }elseif($imc["valor"]>=18){
            $imc["classificacao"]="Pode Votar";
        }
    }
?>
<!DOCTYPE html>
<html lang="pt-br">
<head>
	 	 <title>Nome e Idade Para Votar</title>
</head>
<body>
 <?php
    if(isset($imc["valor"])){
        echo "<h3>O usuário ".$arr["nome"]." com Idade ".$arr["Idade"]."</h3>";
        echo "<h3>Foi classificado como ".$imc["classificacao"]."</h3>";
    }
 ?>
 <form method="POST" action="<?php echo $_SERVER["PHP_SELF"]; ?>">
 Nome: <input type="text" name="nome"><br>
 Idade: <input type="number" name="Idade"><br>
 <input type="submit">
 </form>
</body>
</html>