from django.shortcuts import render
from rest_framework import viewsets, renderers
from app.models import User
from app.serializers import UserSerializer


class UserViewSet(viewsets.ModelViewSet):
    queryset = User.objects.all()
    serializer_class = UserSerializer
    # permission_classes = ()
    # renderer_classes = [renderers.JSONRenderer, ]


def index(request):
    return render(request, 'app/index.html', {})