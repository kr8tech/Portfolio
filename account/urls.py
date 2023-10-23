from django.urls import path
from . import views

urlpatterns = [
    path("", views.dashboard, name="dashboard"),
    path("profile", views.profile, name="profile"),
    path("transactions", views.transactions, name="transactions"),
    path("events", views.events, name="events"),
    path("messages", views.messages, name="messages"),
]