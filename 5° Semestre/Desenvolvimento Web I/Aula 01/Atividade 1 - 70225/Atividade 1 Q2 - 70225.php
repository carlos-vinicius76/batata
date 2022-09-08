<?php
    /*
    Programa: Atividade 1 Q2 - 70225.php
    Autor: Carlos Vinicius da Silva
    Data: 22/08/2022
    */
?>
<!DOCTYOE html>
<html lang="pt-br">
    <head>
        <title>Atividade 1 - 70225 Exercício 2 - Página PHP</title>
    </head>
    <body>
        <h1>
        <?php
            echo "Atividade 1 - 70225 Exercício 2!   ".date("d-m-Y H:i:s");
        ?>
        </h1>
        </h2>
        <?php

         $arr = array (1,2,3,4,5,6,7,8,9,10);

         //Para cada elemento array aplica uma função redutora
         $soma = array_reduce($arr, function($carry, $item){  
         //Testa par ver se o número é par se for soma o elemento senão mantém o valor
         return $item % 2 == 0 ? $carry + $item : $carry;
         });
         echo "2. Crie um código em PHP que definido um array de n números inteiros, determinar a
         soma dos números pares.
         Exemplo de array (1,2,3,4,5,6,7,8,9,10)-Soma Total de Numero pares  ".$soma;
         ?>
         </h2>
     </body>
</html>