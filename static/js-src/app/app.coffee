baseApp = angular.module 'baseApp', ['ngRoute', 'userControllers', 'userServices']

static_file = '/static/'

baseApp.config ($interpolateProvider) ->
    $interpolateProvider.startSymbol('[[');
    $interpolateProvider.endSymbol(']]');
    return


baseApp.config ['$routeProvider', '$locationProvider',
    ($routeProvider, $locationProvider) ->
        $routeProvider.
            when '/users',
                templateUrl: static_file + 'partials/user.html',
                controller: 'UserCtrl',
                resolve:
                    users: (User) ->
                        return User.list()

        # use the HTML5 History API
        # $locationProvider.html5Mode(true);
        return
]
