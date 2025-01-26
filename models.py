from django.db import models
from django.contrib.auth.models import User
# from django.contrib.auth.models import AbstractUser
class Meal(models.Model):
    title = models.CharField(max_length=100)
    content = models.TextField()
    created_at = models.DateTimeField(auto_now_add=True)
    author = models.ForeignKey(User, on_delete=models.CASCADE, related_name="meals")
    def __str__(self):
        return self.title
    
# class CustomUser(AbstractUser):
#     is_admin = models.BooleanField(default=False) 