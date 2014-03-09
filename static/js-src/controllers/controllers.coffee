userControllers = angular.module 'userControllers', []

userControllers.controller 'UserCtrl', ['$scope', '$http', 'users', ($scope, $http, users) ->
    $scope.users = users
    return
]

# Controller 2
# cadastroControllers.controller 'SecondCtrl', ['$scope', ($scope) ->
#     return
# ]
