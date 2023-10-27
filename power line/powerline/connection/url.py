from django.conf.urls import url
from connection import views

urlpatterns=[
    url('connection/',views.conn),
    url('connv/',views.vconn),
    url('aaa/(?P<idd>\w+)',views.acpt),
    url('nnn/(?P<idd>\w+)',views.rjt),
]