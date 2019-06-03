<?php

//$this->PDO = new \PDO('mysql:host=localhost;dbname=flyapp_db;charset=utf8', 'root', ''); //Conexão
$this->PDO = new \PDO('mysql:host=localhost;dbname=flyparking_db;charset=utf8', 'root', ''); //Conexão
$this->PDO->setAttribute(\PDO::ATTR_ERRMODE, \PDO::ERRMODE_EXCEPTION); //Habilitando erros do PDO

?>