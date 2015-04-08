(function(window, angular, undefined) {
	'use strict';

	
	var module = angular.module('projetos', ['ngMaterial', 'ui.router']);

	module.config( function( $stateProvider, $urlRouterProvider ) {
	
			
		//-------
		//URL Router
		//-------

		//HOME
        $urlRouterProvider.otherwise("/");

        $stateProvider.state('goal-insert',{
			url : "/goal",
			controller : 'GoalController',
			templateUrl : "./ui/goal-view.jsp"
		}).state('goal-listar', {
			url : "/listar"
		});

		$stateProvider.state('documento-referencia',{
			url : "/documento-referencia",
			controller : 'DocumentoReferenciaController',
			templateUrl : "./modules/pdti/ui/documento-referencia/documento-referencia-view.jsp"
		});

		$stateProvider.state('estrategia-organizacao',{
			url : "/estrategia-organizacao",
			controller : 'EstrategiaOrganizacaoController',
			templateUrl : "./modules/pdti/ui/estrategia-organizacao/estrategia-organizacao-view.jsp"
		});

		$stateProvider.state('principio-diretriz',{
			url : "/principio-diretriz",
				controller : 'PrincipioDiretrizController',
			templateUrl : "./modules/pdti/ui/principio-diretriz/principio-diretriz-view.jsp"
		});
	});

	module.run( function( $rootScope, $window ) {
		
	});

	angular.element(document).ready( function() {
		angular.bootstrap( document, ['projetos']);
	});

})(window, window.angular);