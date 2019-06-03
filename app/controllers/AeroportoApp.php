<?php 
namespace controllers{
  /*
  Classe AeroportoApp
  */
  class AeroportoApp{
    //Atributo para banco de dados
    private $PDO;

    /*
    __construct
    Conectando ao bando de dados
    */
    function __construct(){
      include 'db/conexao.php';
    }
    /*
    Lista
    Listando os aeroportos
    */
    public function lista(){
      global $app;
      $sth = $this->PDO->prepare("SELECT * FROM aeroportos_app");
      $sth->execute();
      $resultado = $sth->fetchAll(\PDO::FETCH_ASSOC);
      $app->render('default.php',["data"=>$resultado],200);
    }
    /*
    Get
    param $id
    pega aeroporto pelo id
    */
    public function get($id){
      global $app;
      $sth = $this->PDO->prepare("SELECT * FROM aeroportos_app WHERE id = :id");
      $sth->bindValue(':id',$id);
      $sth->execute();
      $resultado = $sth->fetch(\PDO::FETCH_ASSOC);
      $app->render('default.php',["data"=>$resultado],200);
    }
  }
}

?>