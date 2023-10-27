from django.shortcuts import render
from employee.models import Employee
# Create your views here.
from login.models import Login


def emp(request):
    if request.method=='POST':
        obj=Employee()
        obj.name=request.POST.get('name')
        obj.age=request.POST.get('age')
        obj.address=request.POST.get('addrs')
        obj.department=request.POST.get('dept')
        obj.salary=request.POST.get('slry')
        obj.contact_no=request.POST.get('phone')
        obj.status='pending'
        obj.save()

        ob = Login()
        ob.username = request.POST.get('user')
        ob.password = request.POST.get('pass')
        obj.o_id=1
        ob.type = "employee"
        ob.uid = obj.e_id
        ob.save()
    return render(request, 'employee/employee.html')

def vemp(request):
    obj=Employee.objects.all()
    context={
        'c': obj
    }
    return render(request, 'employee/view_mng_emp.html',context)

# def appr(request,idd):
#     obj=Employee.objects.get(e_id=idd)
#     obj.status='approved'
#     obj.save()
#     return vemp(request)
# def rjct(request,idd):
#     obj=Employee.objects.get(e_id=idd)
#     obj.status='rejected'
#     obj.save()
#     return vemp(request)