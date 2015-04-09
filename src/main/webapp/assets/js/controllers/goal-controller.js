(function(angular)  {
	'use strict';
	
	angular.module('projetos').controller('GoalController', function( $scope, $log, $state) {
		
		$scope.currentState = $state.current.name;
		
		$scope.LIST_STATE = 'goal-listar';
		$scope.INSERT_STATE = 'goal-insert';
		
		goalServiceDwr.findAllGoals({
			callback: function(result) {$log.log(result)},
			errorHandler: function(message,error) {$log.log(message)}
		});
		
	})
	
})(window.angular);