var mainCtrl = function($scope) {
	$scope.users = [
		{"name":"kobata","score":100},
		{"name":"kobata2","score":90},
		{"name":"kobata3","score":80},
	];
	
	$scope.today = new Date();
}