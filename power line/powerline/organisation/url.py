from django.conf.urls import url
from organisation import views
urlpatterns=[
    url('organi/',views.org),
    url('orgv/',views.vorg),
    url('zzz/(?P<idd>\w+)',views.appr),
    url('rrr/(?P<idd>\w+)',views.rejct),
]