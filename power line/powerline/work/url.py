from django.conf.urls import url
from work import views
urlpatterns=[
    url('empworkv/',views.vempwork),
    url('viewwork/',views.vwork),
    url('awork/',views.work),
    url('sts/(?P<idd>\w+)',views.status)
]