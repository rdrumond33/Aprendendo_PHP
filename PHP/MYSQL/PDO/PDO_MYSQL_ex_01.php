<?php

$conm = new PDO("mysql:dbname=dbphp7;host=localhost","root","");

$stnt = $conm->prepare("SELECT * FROM tb_usuarios ORDER BY deslogin");

$stnt->execute();

$result = $stnt->fetchAll(PDO::FETCH_ASSOC);

foreach($result as $row){

  foreach ($row as $key => $value) {
    echo "<strong>".$key."</strong>:".$value."<br/>";
  }
  echo "</br>";
}
// var_dump(json_encode($result));

?>