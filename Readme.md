Project Django REST and AngularJS - Skeleton
----

A simple structure start.


### Starting:


`git clone https://github.com/raul010/django-angular-skeleton.git`

`cd django-angular-skeleton`

`python manage.py syncdb` (**yes**, to create superuser)

`python manage.py runserver`

- Go ahead: **http://localhost:8000/index/**
- Click in **#/users** and should be shown your username.

(like this http://django-angular-skeleton.herokuapp.com/index/)

*And just this!*

----
### File Structure:
*Folders:*

- **app** (Django App)
- **project** (Django Project)
- **static** (Angular Files)

*More complete:*

```
├── app
│   ├── models.py
│   ├── serializers.py
│   ├── templates
│   │   ├── app
│   │   │   └── index.html
│   │   └── base.html
│   └── ...
├── project
│   ├── settings.py
│   ├── urls.py
│   └── wsgi.py
└── static
    ├── css
    ├── js
    │   ├── app
    │   │   └── app.js
    │   ├── controllers
    │   │   └── controllers.js
    │   └── services
    │       └── services.js
    ├── js-src
    ├── lib
    │   ├── angular
    │   └── bootstrap
    └── partials
        └── user.html

```

### To use static servers like *Nginx*:

```
location /static/ {
    autoindex on;
    alias /home/user/dev/django-angular-skeleton/static/;
}
```
