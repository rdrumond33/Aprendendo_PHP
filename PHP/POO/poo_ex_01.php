<?php

class Pessoa{


  private $cpf;
  public $nome;
  public $idade;



  public function getCpf(){

    return $this->cpf;
  }

  public function setCpf($cpf){

    $this->cpf = $cpf;
  }


}



$Rodrigo = new Pessoa();

$Rodrigo->nome = "Rodrigo Drumond";
$Rodrigo->idade = 21;
$Rodrigo->setCpf("0123456789");

echo $Rodrigo->nome." ".$Rodrigo->getCpf();

?>