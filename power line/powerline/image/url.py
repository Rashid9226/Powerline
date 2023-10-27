from django.conf.urls import url
from image import views
urlpatterns=[
    url('image/',views.processimage),
    url('viewimg/',views.vimg),
    url('userview/',views.vimgu),
]