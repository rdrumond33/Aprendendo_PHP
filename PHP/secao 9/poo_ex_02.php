<?php

class Carro{


  private $modelo;
  private $ano;
  public $cor;



  public function getModelo(){

    return $this->modelo;
  }

  public function setModelo($modelo){

    $this->modelo = $modelo;
  }

  public function getAno(){

    return $this->ano;

  }

  public function setAno($ano){

    $this->ano = ano;
  }


}
?>