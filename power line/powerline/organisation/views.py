from django.shortcuts import render

from login.models import Login
from organisation.models import Organization

# Create your views here.
def org(request):
    if request.method=='POST':
        obj=Organization()
        obj.name=request.POST.get('name')
        obj.address=request.POST.get('add')
        obj.contact_no=request.POST.get('ph')
        obj.email_id=request.POST.get('email')
        obj.save()

        ob = Login()
        ob.username = request.POST.get('user')
        ob.password = request.POST.get('pass')
        ob.type = "organisation"
        ob.uid = obj.o_id
        ob.save()
    return render(request, 'organisation/organization.html')

def vorg(request):
    obj=Organization.objects.filter(status='')
    context={
        'o':obj
    }
    return render(request, 'organisation/view_mngorg.html',context)

def appr(request,idd):
    obj=Organization.objects.get(o_id=idd)
    obj.status='approved'
    obj.save()
    return vorg(request)
def rejct(request,idd):
    obj=Organization.objects.get(o_id=idd)
    obj.status='rejected'
    obj.save()
    return vorg(request)




