from django.shortcuts import render
from login.models import Login
# Create your views here.

def log(request):
    if request.method=="POST":
        name=request.POST.get('username')
        psw=request.POST.get('pass')
        obj=Login.objects.filter(username=name,password=psw)
        tp=""
        for i in obj:
            tp=i.type
            uid=i.uid
            if tp=="admin":
                request.session["u_id"]=uid
                return render(request,'temp/admin.html')
            elif tp=="consumer":
                request.session["u_id"]=uid
                return render(request,'temp/consumer.html')
            elif tp=="employee":
                request.session["u_id"]=uid
                return render(request,'temp/employee.html')
            elif tp=="organisation":
                request.session["u_id"]=uid
                return render(request,'temp/organisation.html')
        objlist="username or password is incorrect..."
        context={
            'msg':objlist,
        }
        return render(request,'login/login.html',context)
    return render(request, 'login/login.html')


