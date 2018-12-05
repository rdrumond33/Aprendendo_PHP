<?php
$a = 1;
$b = 2;

if($a == $b){
  echo "$a === $b true";
}else{
  echo "$a=/=$b false";
}
$b=1;
if($a == $b){
  echo "\n$a === $b true";
}else{
  echo "$a=/=$b false";
}
echo "\noperador teranrio: ". $a==$b?"\n$a === $b true":"\n$a=/=$b false";


?>