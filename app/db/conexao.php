<?php

$this->PDO = new \PDO('mysql:host=mysql465.umbler.com;dbname=api_fly;charset=utf8', 'fly_dba', 'b62G.C.bOaO'); //Conexão
//$this->PDO = new \PDO('mysql:host=localhost;dbname=flyparking_db;charset=utf8', 'root', ''); //Conexão
$this->PDO->setAttribute(\PDO::ATTR_ERRMODE, \PDO::ERRMODE_EXCEPTION); //Habilitando erros do PDO

?>