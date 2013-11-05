<!doctype html>
<html>
<head>
[@cms.init /]
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>${content.title!}</title>

<link type="text/css" rel="stylesheet"
	href="/.resources/ycweb-project/css/all.css" media="all">

<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.8/angular.min.js"></script>
</head>
<body>
	<h1>${content.title!}</h1>

	Time: ${model.getCurrentTime()}
	<br />
	<br /> 
	START area main 
	<br />
	<br />
	[@cms.area name="main"/]
	<br /> 
	END area main
	<br />
	<br />
	<br />
	
	<div ng-app="demoApp" ng-controller="ServerCtrl">
		<form ng-submit="onSend()">
			<input type="text" ng-model="input" />
			<button type="submit">Call webservice</button>
		</form>
		<br />
		MD5 value of input:
		<div class="result">{{md5Value}}</div>
	</div>
</body>
<script>
	var myApp = angular.module('demoApp', []);

	// Modify HTTP header
	myApp.config([ '$httpProvider', function($httpProvider) {
		$httpProvider.defaults.useXDomain = true;
		delete $httpProvider.defaults.headers.common['X-Requested-With'];
	} ]);

	// Call JSON webservice
	myApp.controller('ServerCtrl', function ServerCtrl($scope, $http) {
		$scope.onSend = function() {
			var url = "http://md5.jsontest.com/?text=" + $scope.input
			$http.get(url).then(function(result) {
				$scope.md5Value = result.data.md5
			})
		}
	});
</script>
</html>