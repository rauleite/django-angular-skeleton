from django.contrib import admin
from django.conf.urls import patterns, url, include
from rest_framework import routers
from rest_framework.urlpatterns import format_suffix_patterns
from app import views

admin.autodiscover()
router = routers.DefaultRouter()
router.register(r'users', views.UserViewSet)


urlpatterns = patterns('',
    url(r'^admin/', include(admin.site.urls)),
    url(r'^index/', 'app.views.index'),
    url(r'^', include(router.urls)),
)


# urlpatterns = format_suffix_patterns(urlpatterns)
