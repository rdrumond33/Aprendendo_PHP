<?php

require_once('./config/config.php');
use Cliente\Cadastro;

$cadastro = new Cadastro();

$cadastro->setNome("Rodrigo");
$cadastro->setEmail("Rodrigo@hotmail.com");
$cadastro->setSenha("123456");

$cadastro->registraVenda();
/**
 * Retornado um json na função magica do tostring
 */
// echo $cadastro;
?>