<?php

/** connectando ao banco  usando a classe mysqli */
/** mysqli(servidor,usuario,senha,banco)*/

$conm = new mysqli("localhost","root","","dbphp7");

if($conm->connect_error){
  echo "Error: ".$conm->connect_error;
}

/** FAzendo um Select */

$result = $conm->query("SELECT * FROM tb_usuarios ORDER BY deslogin");
$data = array();
/**VAi pecorer os dados no banco de 
 * nao retorana um arry sera um false e saira */
while($row = $result->fetch_array()){
  array_push($data,$row);
}
echo json_encode($data);
?>