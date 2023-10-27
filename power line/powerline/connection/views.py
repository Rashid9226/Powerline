from django.shortcuts import render
from connection.models import Connection
from organisation.models import Organization
from login.models import Login
# Create your views here.
def conn(request):
    ss = request.session["u_id"]
    obk = Organization.objects.filter(status='approved')
    # obk =Organization.objects.all()
    context = {
        'x': obk
    }
    if request.method=='POST':
        obj=Connection()
        obj.request=request.POST.get('req')
        obj.o_id=request.POST.get('org')
        obj.status='pending'
        obj.cons_id="1"
        obj.save()
    return render(request, 'connection/connection.html',context)

def vconn(request):
    ss = request.session["u_id"]
    obj=Connection.objects.filter(status='pending',o_id=ss)
    context={
        'b': obj
    }
    return render(request, 'connection/view_conn.html',context)

def acpt(request,idd):
    obj=Connection.objects.get(conn_id=idd)
    obj.status='accepted'
    obj.save()
    return vconn(request)

def rjt(request,idd):
    obj=Connection.objects.get(conn_id=idd)
    obj.status='rejected'
    obj.save()
    return vconn(request)