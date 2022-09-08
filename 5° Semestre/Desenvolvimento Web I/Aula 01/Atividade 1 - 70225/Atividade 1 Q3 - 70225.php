<?php
/*
    Programa: Atividade 1 Q3 - 70225.php
    Autor: Carlos Vinicius da Silva
    Data: 31/08/2022
* função gcd()
*
* retorna o máximo divisor comum
* entre dois números
* testado contra gmp_gcd()
*/
function gcd($a, $b)
{
    if ($a == 0 || $b == 0)
        return abs( max(abs($a), abs($b)) );
       
    $r = $a % $b;
    return ($r != 0) ?
        gcd($b, $r) :
        abs($b);
}

/*
* função gcd_array()
*
* obtém o máximo divisor comum entre
* uma matriz de números
*/
function gcd_array($array, $a = 0)
{
    $b = array_pop($array);
    return ($b === null) ?
        (int)$a :
        gcd_array($array, gcd($a, $b));
}

?>