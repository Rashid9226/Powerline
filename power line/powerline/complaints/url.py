from django.conf.urls import url
from complaints import views

urlpatterns=[
    url('postcomp/',views.cpost),
    # url('postreply/',views.preply),
    url('compv/',views.vcomp),
    url('adv/',views.adcomp),
    url('replyv/',views.vreply),
    # url('www/$',views.preply),

    url('^www/(?P<idd>\w+)',views.preply),
]