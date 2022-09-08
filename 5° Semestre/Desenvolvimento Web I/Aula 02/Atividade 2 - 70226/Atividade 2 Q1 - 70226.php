<?php
    /*
    Programa: Atividade 2 Q1 - 70226php
    Autor: Carlos Vinicius da Silva
    Data: 23/08/2022
    */
?>
<!DOCTYOE html>
<html lang="pt-br">
    <head>
        <title>Atividade 2 - 70226 Exercício 1 - Página PHP</title>
    </head>
    <body>
        <h1>
        <?php
            echo "Atividade 2 - 70226 Exercício 1!   ".date("d-m-Y H:i:s");
        ?>
        </h1>
        </h2>
        <?php
        // Crie um código em PHP que definidas duas matrizes quadradas $a e $b, de mesmo
        //tamanho, efetue a multiplicação dessas matrizes.
            $a = [
                   ["7","31","44"] ,
                   ["6","29","52"]   // soma da  169

                ];
            $b = [
                  ["8","28","18"] ,
                  ["9","22","34"]  //  soma da 119

                 ];
            $resultA = 169;
            $resultB = 119;

            $Multiplica = $resultA * $resultB;
            echo "O resultado das matrizes é $Multiplica";


            $Teste = $a [1][2] * $b [1][2]; // escolha a posição que deseja multiplicar
            echo "\n","<br>";
            echo "o resultado do A 1/2 x B 1/2 é $Teste";

?>
         </h2>
     </body>
</html>