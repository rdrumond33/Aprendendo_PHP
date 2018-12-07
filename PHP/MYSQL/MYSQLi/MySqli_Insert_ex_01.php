<?php

/** connectando ao banco  usando a classe mysqli */
/** mysqli(servidor,usuario,senha,banco)*/

$conm = new mysqli("localhost","root","","dbphp7");

if($conm->connect_error){
  echo "Error: ".$conm->connect_error;
}

/** FAzendo um insert */
$stnt = $conm->prepare("INSERT INTO tb_usuarios(deslogin,dessenha)VALUES(?,?)");
/** indetificando o tipo dos dois paramentros ? String, ? String */
$stnt->bind_param("ss",$login,$senha);

$login="user";
$senha="123456";

/**Executando a query */
$stnt->execute();

/**Inserindo outro ussuario */
$login="root";
$senha="123456";
$stnt->execute();


?>