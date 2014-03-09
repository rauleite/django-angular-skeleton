userServices = angular.module 'userServices', ['ngResource']

userServices.factory 'User', [ '$http', '$q', ($http, $q) ->
    return {
        list : () ->
            defer = $q.defer()
            $http
                method: 'GET'
                url: '/users/'
            .success (data, status, headers, config) ->
                defer.resolve(data)
                return
            .error (data, status, headers, config) ->
                defer.reject(status)
                return
            return defer.promise;

    }
]
