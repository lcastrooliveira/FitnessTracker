<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="en">
  
  <head>
    <meta charset="utf-8">
    <title>
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Le styles -->
    <link href="assets/css/bootstrap.css" rel="stylesheet">
    <style>
      body { padding-top: 60px; /* 60px to make the container go all the way
      to the bottom of the topbar */ }
    </style>
    <link href="assets/css/bootstrap-responsive.css" rel="stylesheet">
        
    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js">
      </script>
    <![endif]-->
    <!-- Le fav and touch icons -->
    <link rel="shortcut icon" href="assets/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="assets/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="assets/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="assets/ico/apple-touch-icon-57-precomposed.png">
    
    <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/angular_material/0.8.3/angular-material.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=RobotoDraft:300,400,500,700,400italic">
    
    <script src="assets/js/jquery-1.8.3.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.3.15/angular.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.3.15/angular-animate.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.3.15/angular-aria.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/angular_material/0.8.3/angular-material.min.js"></script>
    <script src="assets/js/angular-ui-router.min.js"></script>
    
    <script type='text/javascript' src='/FitnessTracker/dwr/engine.js'></script>
  	<script type='text/javascript' src='/FitnessTracker/dwr/interface/goalServiceDwr.js'></script>  	
  	<script type='text/javascript' src='/FitnessTracker/dwr/interface/exerciseServiceDwr.js'></script>
  	
  	<script src="assets/js/project-main.js"></script>  	
  	<script src="assets/js/controllers/goal-controller.js"></script>
  	  	
  	
        
    <style>
    </style>
  </head>
  <body>
    <div class="navbar navbar-fixed-top navbar-inverse">
      <div class="navbar-inner">
        <div class="container">
          <a class="brand" href="addGoal.html">
            Get started
          </a>
          <ul class="nav">
          </ul>
        </div>
      </div>
    </div>
    <div class="container">
      <div class="hero-unit">
        <div>
          <h1>
            Desafio Eits <sec:authentication property="name"/> !
          </h1>
          <p>
            Escolha uma das opcoes abaixo para inserir um projeto/atividade ou um usu�rio
          </p>
        </div>
        <a class="btn btn-primary" ui-sref="goal-insert">
          Add Goal �
        </a>
        <sec:authorize ifAnyGranted="ROLE_ADMIN">
	        <a class="btn btn-primary" href="editGoal.html">
	          Edit Goal �
	        </a>
        </sec:authorize>
        <a class="btn btn-primary" href="addMinutes.html">
          Add Exercise Minutes �
        </a>
        <a class="btn btn-warning" href="j_spring_security_logout">
          Logout �
        </a>
        <a class="btn btn-primary" href="newProject.html">
          Projetos �
        </a>        
      </div>
      <div>
      </div>
    </div>
        
    <ui-view/>
        
    <script src="assets/js/bootstrap.js">
    </script>
  </body>
</html>
