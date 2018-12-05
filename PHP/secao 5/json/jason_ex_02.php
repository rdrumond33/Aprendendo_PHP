<?php

$json = '[{"nome":"joao","idade":20},{"nome":"rodrigo","idade":20}]';

$data = json_decode($json, true);
var_dump( $data);
?>