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
    Listando os usuarios do app
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
    pega usuario pelo id
    */
    public function get($id){
      global $app;
      $sth = $this->PDO->prepare("SELECT * FROM aeroportos_app WHERE id = :id");
      $sth->bindValue(':id',$id);
      $sth->execute();
      $resultado = $sth->fetch(\PDO::FETCH_ASSOC);
      $app->render('default.php',["data"=>$resultado],200);
    }
    /*
    Post
    Cadastra novo usuario
    */
    /*public function add(){
      global $app;
      $dados = json_decode($app->request->getBody(), true);
			$dados = (sizeof($dados)==0)? $_POST : $dados;
			$keys = array_keys($dados); //Paga as chaves do array
			/*
			O uso de prepare e bindValue é importante para se evitar SQL Injection
			*/
			/*$sth = $this->PDO->prepare("INSERT INTO usuarios_app (".implode(',', $keys).") VALUES (:".implode(",:", $keys).")");
			foreach ($dados as $key => $value) {
				$sth->bindValue(':'.$key,$value);
			}
			$sth->execute();
			//Retorna o id inserido
      $app->render('default.php',["data"=>['id'=>$this->PDO->lastInsertId()]],200);
      
    }*/



    /*
		editar
		param $id
		Editando pessoa
    */
    /*
		public function editar($id){
			global $app;
			$dados = json_decode($app->request->getBody(), true);
			$dados = (sizeof($dados)==0)? $_POST : $dados;
			$sets = [];
			foreach ($dados as $key => $VALUES) {
				$sets[] = $key." = :".$key;
			}
 
			$sth = $this->PDO->prepare("UPDATE usuarios_app SET ".implode(',', $sets)." WHERE id = :id");
			$sth ->bindValue(':id',$id);
			foreach ($dados as $key => $value) {
				$sth ->bindValue(':'.$key,$value);
			}
			//Retorna status da edição
			$app->render('default.php',["data"=>['status'=>$sth->execute()==1]],200); 
    }*/
    /*
		excluir
		param $id
		Excluindo pessoa
    */
    /*
		public function excluir($id){
			global $app;
			$sth = $this->PDO->prepare("DELETE FROM usuarios_app WHERE id = :id");
			$sth ->bindValue(':id',$id);
			$app->render('default.php',["data"=>['status'=>$sth->execute()==1]],200); 
    }
    */
  }
}

?>