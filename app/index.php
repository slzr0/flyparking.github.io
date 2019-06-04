<?php 
//Autoload
$loader = require 'vendor/autoload.php';

//Instanciando objeto
$app = new \Slim\Slim(array(
  'templates.path' => 'templates'
));

//Listando todos os usuarios
$app->get('/', function() use ($app){
	echo 'n';
});

//usuarios

//Listando todos os usuarios
$app->get('/usuarios/', function() use ($app){
	(new \controllers\UsuarioApp($app))->lista();
});

//Listando usuario por id
$app->get('/usuarios/:id', function($id) use ($app){
  (new \controllers\UsuarioApp($app))->get($id);
});

//Adiciona novo usuario no app
$app->post('/usuarios/', function() use ($app){
  (new \controllers\UsuarioApp($app))->add();
});

//Lista Usuário auth
$app->post('/usuarios/consulta', function() use ($app){
  (new \controllers\UsuarioApp($app))->listaAuth();
});

//aeroportos

//Listando aeroporto por id
$app->get('/aeroportos/:id', function($id) use ($app){
	(new \controllers\AeroportoApp($app))->get($id);
});

//Listando todos os aeroportos
$app->get('/aeroportos/', function() use ($app){
	(new \controllers\AeroportoApp($app))->lista();
});

//estacionamentos

//Listando todos os estacionamentos por id de aeroporto
$app->get('/estacionamentos/aeroportos/:aeroporto', function($aeroporto) use ($app){
	(new \controllers\EstacionamentosApp($app))->getEstacionamentosPorAeroporto($aeroporto);
});


//Rodando aplicação
$app->run();
?>