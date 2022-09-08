<?php

echo "<h3>array_combine</h3>";
$a = array("verde","vermelho","amarelo");
$b = array("abacate","maça","banana");

$c = array_combine($a,$b);

print_r($a);
echo "<br>";
print_r($b);
echo "<br>";
print_r($c);


echo "<h3>array_diff</h3>";
$arr1 = array("a"=>"verde","vermelho","azul","vermelho");
$arr2 = array("b"=>"verde","amarelo","vermelho");

$result = array_diff($arr1,$arr2);

print_r($arr1);
echo "<br>";
print_r($arr2);
echo "<br>";
print_r($result);

?>