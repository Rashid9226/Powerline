from django.conf.urls import url
from temp import views

urlpatterns=[
    url('admin/',views.adm),
    url('consm/',views.consu),
    url('empl/',views.empl),
    url('home/',views.hom),
    url('organis/',views.orga),
]