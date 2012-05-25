// franchises controllers
	
'use strict';
	
function FranchisesController($scope, $http, $rootScope, Franchises) {	
	
	
	
	$scope.franchises = Franchises.index();
	
	$scope.newForm = function() {
		$("#new_franchise_table").fadeIn("fast");
	}
	
	$scope.cancelAdd = function() {
		$("#new_franchise_table").hide();
	}
	
	$scope.saveFranchise = function() {
		var newFranchise = {
			franchise_name: $scope.franchiseName,
			franchise_number: $scope.franchiseNumber
		}				
		
		var nf = new Franchises({ franchise: newFranchise });
	
		nf.$create(function() {
			
			$scope.franchises.push(nf);
			
			$scope.franchiseName = "";
			$scope.franchiseNumber = "";
			 
		});	
		
		//$rootScope.$eval();	
		
	};
	
	
	$scope.testButton = function() {
		$scope.franchise.push({
			franchise: {
				franchise_name: "test",
				franchise_number: "testNum"
			}
		})
	}
	
	$scope.franchise = "";
	
	var getFranchise = function() {
		$scope.franchise = this.franchise;
		console.log($scope.franchise);
	}
	
	
	
	
	$scope.destroyFranchise = function() {
		
		$scope.franchise = this.franchise;
		
		$rootScope.$eval(function() {
			
			$scope.franchise.$destroy();
			
		}
			
			
		)
		
		
		
		
	}
	
	
	

	
	
}
