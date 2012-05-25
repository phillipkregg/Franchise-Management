// main app javascript file

'use strict';

	
angular.module('franchiseApp', ['ng', 'ngResource'], function($routeProvider) {
  $routeProvider.
  		when('localhost:3000/franchise_sets/11/edit', {template: '/assets/partials/franchise-list.html',   controller: FranchisesController});
});

