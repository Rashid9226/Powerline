from django.shortcuts import render

# Create your views here.
def adm(request):
    return render(request,'temp/admin.html')

def consu(request):
    return render(request,'temp/consumer.html')

def empl(request):
    return render(request,'temp/employee.html')

def hom(request):
    return render(request,'temp/home.html')

def orga(request):
    return render(request,'temp/organisation.html')
