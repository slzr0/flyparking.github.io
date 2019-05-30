<?php 
namespace controllers{
  /*
  Classe EstacionamentosApp
  */
  class EstacionamentosApp{
    //Atributo para banco de dados
    private $PDO;

    /*
    __construct
    Conectando ao bando de dados
    */
    function __construct(){
      //$this->PDO = new \PDO('mysql:host=localhost;dbname=flyapp_db;charset=utf8', 'root', ''); //Conexão
      $this->PDO = new \PDO('mysql:host=localhost;dbname=flpusr_app_db;charset=utf8', 'flpusr_admindb', '&J?P(RE_2Kg]'); //Conexão
      $this->PDO->setAttribute(\PDO::ATTR_ERRMODE, \PDO::ERRMODE_EXCEPTION); //Habilitando erros do PDO
    }
    /*
    Get
    param $aeroporto
    Lista todos os estacionamentos pelo id do aeroporto
    */
    public function getEstacionamentosPorAeroporto($aeroporto){
      global $app;
      $sth = $this->PDO->prepare("SELECT * FROM estacionamentos_app WHERE aeroporto = :aeroporto");
      $sth->bindValue(':aeroporto',$aeroporto);
      $sth->execute();
      $resultado = $sth->fetchAll(\PDO::FETCH_ASSOC);
      $app->render('default.php',["data"=>$resultado],200);
    }
  }
}

?>