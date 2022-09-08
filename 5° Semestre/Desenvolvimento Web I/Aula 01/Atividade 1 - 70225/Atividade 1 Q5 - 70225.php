<?php
    /*
    Programa: Atividade 1 Q5 - 70225.php
    Autor: Carlos Vinicius da Silva
    Data: 22/08/2022
    */
?>
<!DOCTYOE html>
<html lang="pt-br">
    <head>
        <title>Atividade 1 - 70225 Exercício 5 - Página PHP</title>
    </head>
    <body>
        <h1>
        <?php
        $arr = array (35,70,1,9,6,25,12);
     rsort($arr); // Classifica o Array em ordem Decrescente.

     print_r($arr); // Resultado: Array ( [0] => 35 [1] => 70 [2] => 1 [3] => 9 [4] => 25 [5] => 12)
     
     echo"Exemplo em Sua Oredem Crescente fica".rsort($arr);
      
     sort($arr); // Classifica o Array em ordem Crescente.

     print_r($arr); // Resultado: Array ( [0] => 1 [1] => 6 [2] => 9 [3] => 12 [4] => 25 [5] => 35 [6] => 70 )
        ?>
        
    </body>
</html>