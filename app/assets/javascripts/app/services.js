// contact resource

'use strict';
	
	//alert("service")

	angular.module('franchiseApp' ).
	    factory('Franchises', function($resource, $rootScope){
		  return $resource('/franchise_sets/' + franchise_set_id + '/franchises/:franchise_id', { franchise_id: "@id" }, {
		    	
		    	'index'   : { method: 'GET', isArray: true },
		    	'create'  : { method: 'POST' },
		    	'destroy' : { method: 'DELETE' }
		  });
	  
	});
	
	
	
	

