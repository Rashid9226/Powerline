from django.shortcuts import render
from complaints.models import Complaint
from organisation.models import Organization
# Create your views here.
def cpost(request):
    ss=  request.session["u_id"]
    ob=Organization.objects.filter(status='approved')
    context={
        'l':ob
    }
    if request.method=='POST':
        obj=Complaint()
        obj.complaint=request.POST.get('comp')
        obj.cons_id=ss
        obj.reply='pending'
        obj.o_id=request.POST.get('or')
        obj.save()
    return render(request, 'complaints/complaint.html',context)

def vcomp(request):
    ss = request.session["u_id"]
    obj=Complaint.objects.filter(reply='pending',o_id=ss)
    context={
        'ok': obj
    }
    return render(request, 'complaints/view_comp.html',context)

def adcomp(request):
    # ss = request.session["u_id"]
    obj=Complaint.objects.filter(reply='pending')
    context={
        'j': obj
    }
    return render(request, 'complaints/view_compadmin.html',context)



def preply(request,idd):
    # idd=request.GET.get('id')
    if request.method=='POST':
        obj = Complaint.objects.get(comp_id=idd)
        # obk=Complaint()
        obj.reply=request.POST.get('repl')
        obj.save()
    return render(request, 'complaints/post_reply.html')

def  vreply(request):
    ss = request.session["u_id"]
    obj=Complaint.objects.filter(cons_id=ss)
    context={
        'a': obj
    }
    return render(request, 'complaints/view_reply.html',context)
