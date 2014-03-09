from django.db import models
from django.contrib.auth.models import AbstractUser


class User(AbstractUser):
    users = models.ManyToManyField('self', related_name='user', symmetrical=False)