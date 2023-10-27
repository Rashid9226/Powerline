from django.http import HttpResponseRedirect
from django.shortcuts import render
from payments.models import Payment
from organisation.models import Organization
import datetime
# Create your views here.

def pay(request):
    ss=request.session["u_id"]
    a=request.session["a"]
    o=request.session["o"]
    context = {
        'x': o,
        'a': a
    }
    if request.method=='POST':
        obj=Payment()
        obj.bill_amount=a
        obj.payment_method=request.POST.get('pay')
        obj.o_id=o
        obj.cons_id=ss
        obj.date=datetime.datetime.today()
        obj.save()
        return HttpResponseRedirect('/temp/consm/')
    return render(request, 'payments/payments.html',context)

def viewpay(request):
    ss=request.session["u_id"]
    obj=Payment.objects.filter(o_id=ss)
    context={
        'p':obj
    }
    return render(request, 'payments/view_payment.html',context)
