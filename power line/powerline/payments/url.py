from django.conf.urls import url
from payments import views
urlpatterns=[
    url('payment/',views.pay),
    url('payview/',views.viewpay),
]