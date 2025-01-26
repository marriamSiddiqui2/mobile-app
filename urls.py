from django.urls import path
# from .views import LoginView, RegisterView
from app.views import (
    LoginView, 
    RegisterView, 
    NoteListCreate, 
    NoteDelete,
    user_details
)


urlpatterns = [
    path('api/token/', LoginView.as_view(), name='token_obtain_pair'),
    path('api/user/register/', RegisterView.as_view(), name='register'),
    path('api/user/details/', user_details, name='user-details'),
    path('meals/', NoteListCreate.as_view(), name='meal-list'),
    path('meals/delete/<int:pk>/', NoteDelete.as_view(), name='delete-meal'),
]
