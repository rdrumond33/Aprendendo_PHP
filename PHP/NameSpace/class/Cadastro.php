<?php

class Cadastro{

  private $nome;
  private $email;
  private $senha;

  public function getNome():string{
    return $this->$nome;
  }
  
  public function getemail():string{
    return $this->$email;
  }

  public function getsenha():string{
    return $this->$senha;
  }

  public function setNome($nome){
    $this->nome = $nome;
  }

  
  public function setSenha($senha){
    $this->senha = $senha;
  }

  
  public function setEmail($email){
    $this->email = $email;
  }

  public function __toString(){
    return json_encode(array(
      "nome" => $this->nome,
      "email" => $this->email,
      "senha" => $this ->senha
    ));
  }
}

?>