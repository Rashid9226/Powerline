from django.shortcuts import render
from work.models import Work
from employee.models import Employee
# Create your views here.
def vempwork(request):
    ss = request.session["u_id"]
    obj=Work.objects.filter(work_status='pending',e_id=ss)
    context={
        'ew':obj
    }
    return render(request, 'work/view_empwork.html',context)

def vwork(request):
    ss = request.session["u_id"]
    obj=Work.objects.filter(o_id=ss)
    context={
        'vw':obj
    }
    return render(request, 'work/view_work.html',context)

def work(request):
    ss = request.session["u_id"]
    ob=Employee.objects.all()
    context={
        'p':ob
    }
    if request.method=='POST':
        obj=Work()
        obj.work=request.POST.get('work')
        obj.e_id=request.POST.get('em')
        obj.work_status="pending"
        obj.o_id=ss
        # obj.e_id=request.POST.get('em')
        obj.save()
    return render(request, 'work/work.html',context)

def status(request,idd):
    ob=Work.objects.get(w_id=idd)
    ob.work_status="COMPLETED"
    ob.save()
    return vempwork(request)