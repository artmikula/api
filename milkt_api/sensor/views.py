from django.shortcuts import render, redirect  
from sensor.forms import *  
from sensor.models import *  

#sensor data

def sensor_data_post(request):
    if request.method == "POST":  
        form = Sensor_DataForm(request.POST)
        if form.is_valid():
            try:
                form.save() 
                return redirect('/sensor_data_show')
            except:
                print("nono")
                pass 
    else:  
        form = Sensor_DataForm()
    return render(request,'sensor_data_post.html',{'form':form})


def sensor_data_show(request):  
    sensor_data = Sensor_Data.objects.filter(is_deleted=0)
    return render(request,"sensor_data_show.html",{'sensor_data':sensor_data})  


def sensor_create(request):
    if request.method == "POST":
        form = SensorForm(request.POST)
        if form.is_valid():
            try:
                form.save() 
                return redirect('/sensor_read')
            except:
                pass 
    else:  
        form = SensorForm()
    return render(request,'sensor_create.html',{'form':form})

# sensor

def sensor_read(request):
    sensor_data = Sensor.objects.filter(is_deleted=0)
    return render(request,"sensor_read.html",{'sensor_data':sensor_data})  


def sensor_update(request, id):
    single_sensor_data = Sensor.objects.get(id=id)
    return render(request,'sensor_update.html', {'single_sensor_data':single_sensor_data})  


def sensor_delete(request, id):
    single_sensor_data = Sensor.objects.get(id=id)  
    single_sensor_data.is_deleted = 1
    single_sensor_data.save() 
    return redirect("/sensor_read")

# farm

def farm_create(request):
    if request.method == "POST":
        form = FarmForm(request.POST)
        if form.is_valid():
            try:
                form.save() 
                return redirect('/farm_read')
            except:
                pass 
    else:  
        form = FarmForm()
    return render(request,'farm_create.html',{'form':form})


def farm_read(request):
    farm_data = Farm.objects.filter(is_deleted=0)
    print(farm_data)
    return render(request,"farm_read.html",{'farm_data':farm_data})  


def farm_update(request, id):  
    single_farm_data = Farm.objects.get(id=id)  
    return render(request,'farm_update.html', {'single_farm_data':single_farm_data})  


def farm_delete(request, id):
    single_farm_data = Farm.objects.get(id=id)
    single_farm_data.is_deleted = 1
    single_farm_data.save()
    return redirect("/farm_read")

# cow

def cow_create(request):
    if request.method == "POST":
        form = CowForm(request.POST)
        if form.is_valid():
            try:
                form.save() 
                return redirect('/cow_read')
            except:
                pass 
    else:  
        form = CowForm()
    return render(request,'cow_create.html',{'form':form})

def cow_read(request):
    cow_data = Cow.objects.filter(is_deleted=0)
    print(cow_data.values("cow_id"))
    return render(request,"cow_read.html",{'cow_data':cow_data})  

def cow_update(request, id):  
    single_cow_data = Cow.objects.get(id=id)
    print(single_cow_data)
    return render(request,'cow_update.html', {'single_cow_data':single_cow_data})  

def cow_delete(request, id):
    single_cow_data = Cow.objects.get(id=id)  
    single_cow_data.is_deleted = 1
    single_cow_data.save()
    return redirect("/cow_read")

# cow sensor

def cow_sensor_create(request):
    if request.method == "POST":
        form = Cow_SensorForm(request.POST)
        if form.is_valid():
            try:
                form.save() 
                return redirect('/cow_sensor_read')
            except:
                pass 
    else:  
        form = Cow_SensorForm()
    return render(request,'cow_sensor_create.html',{'form':form})

def cow_sensor_read(request):
    cow_sensor_data = Cow_Sensor.objects.filter(is_deleted=0)
    return render(request,"cow_sensor_read.html",{'cow_sensor_data':cow_sensor_data})  

def cow_sensor_update(request, id):  
    single_cow_sensor_data = Cow_Sensor.objects.get(id=id)  
    return render(request,'cow_sensor_update.html',
    {'single_cow_sensor_data':single_cow_sensor_data})

def cow_sensor_delete(request, id):
    single_cow_sensor_data = Cow_Sensor.objects.get(id=id)
    single_cow_sensor_data.is_deleted = 1
    single_cow_sensor_data.save()
    return redirect("/cow_sensor_read")

# commands

def command_create(request):
    if request.method == "POST":
        form = CommandForm(request.POST)
        if form.is_valid():
            try:
                form.save() 
                return redirect('/command_read')
            except:
                pass 
    else:  
        form = CommandForm()
    return render(request,'command_create.html',{'form':form})

def command_read(request):
    command_data = Command.objects.filter(is_deleted=0)
    return render(request,"command_read.html",{'command_data':command_data})  

def command_update(request, id):  
    single_command_data = Command.objects.get(id=id)  
    return render(request,'command_update.html', {'single_command_data':single_command_data})  

def command_delete(request, id):
    single_command_data = Command.objects.get(id=id)  
    single_command_data.is_deleted = 1
    single_command_data.save()
    return redirect("/command_read")

# users

def user_create(request):
    if request.method == "POST":
        form = UserForm(request.POST)
        if form.is_valid():
            try:
                form.save() 
                return redirect('/user_read')
            except:
                pass 
    else:  
        form = UserForm()
    return render(request,'user_create.html',{'form':form})

def user_read(request):
    user_data = User.objects.filter(is_deleted=0)
    return render(request,"user_read.html",{'user_data':user_data})  

def user_update(request, id):
    single_user_data = User.objects.get(id=id)
    return render(request,'user_update.html', {'single_user_data':single_user_data})

def user_delete(request, id):
    single_user_data = User.objects.get(id=id)
    single_user_data.is_deleted = 1
    single_user_data.save()
    return redirect("/user_read")

#log

def log_read(request):
    log_data = Log.objects.filter(is_deleted=0)
    return render(request,"log_read.html",{'log_data':log_data})
