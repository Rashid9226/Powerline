from django.conf.urls import url
from consumer import views

urlpatterns=[
    url('regcons/',views.cons),
]