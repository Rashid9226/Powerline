from django.shortcuts import render
from consumer.models import Consumer
# Create your views here.
from login.models import Login


def cons(request):
    if request.method=='POST':
        obj=Consumer()
        obj.name=request.POST.get('name')
        obj.address=request.POST.get('addrs')
        obj.contact_no=request.POST.get('phone')
        obj.email_id=request.POST.get('email')
        obj.save()

        ob=Login()
        ob.username=request.POST.get('user')
        ob.password=request.POST.get('pass')
        ob.type="consumer"
        ob.uid=obj.cons_id
        ob.save()
    return render(request, 'consumer/consumer.html')

