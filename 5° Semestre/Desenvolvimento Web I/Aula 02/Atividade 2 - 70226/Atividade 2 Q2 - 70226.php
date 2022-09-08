<?php
    /*
    Programa: Atividade 2 Q2 - 70226php
    Autor: Carlos Vinicius da Silva
    Data: 23/08/2022
    */
?>
<!DOCTYOE html>
<html lang="pt-br">
    <head>
        <title>Atividade 2 - 70226 Exercício 2 - Página PHP</title>
    </head>
    <body>
 <form action="" method="get">
  Digite um numero: <input type="number" name="number" /><br />
  <input type="submit" name="submit" value="testar" />
 </form> 
 <?php
  $n = $_GET['number'];
  $divisores = 0;
  
  for($count=2; $count<$n; $count++)
   if($n % $count == 0){
    echo "Multiplo de $count<br />";
    $divisores++;
   }
  
  if($divisores)  echo "Não é, tem $divisores divisores além de 1 e ele mesmo";
  else    echo "É primo!";
  
 ?>
 </body>
</html>