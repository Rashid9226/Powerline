from django.conf.urls import url
from employee import views
urlpatterns=[
    url('employee/',views.emp),
    url('empv/',views.vemp),
    # url('zzz/(?P<idd>\w+)',views.appr),
    # url('rrr/(?P<idd>\w+)',views.rjct),
]