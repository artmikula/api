from django.shortcuts import render, HttpResponse
from django.shortcuts import render, redirect  
from sensor.forms import *  
from sensor.models import *  

def main(request):
    return render(request, 'main.html')

def sensor(request):
  return render(request, 'sensor.html')

def sensor_data_post(request):  
    if request.method == "POST":  
        form = Sensor_DataForm(request.POST)
        if form.is_valid():
            try:
                form.save() 
                return redirect('/sensor_data_show')
            except:
                pass 
    else:  
        form = Sensor_DataForm()
    return render(request,'sensor_data_post.html',{'form':form})
def sensor_data_show(request):  
    sensor_data = Sensor_Data.objects.all()
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
def sensor_read(request):
    sensor_data = Sensor.objects.all()
    return render(request,"sensor_read.html",{'sensor_data':sensor_data})  
def sensor_update(request, id):
    single_sensor_data = Sensor.objects.get(id=id)
    return render(request,'sensor_update.html', {'single_sensor_data':single_sensor_data})  
def sensor_delete(request, id):
    single_sensor_data = Sensor.objects.get(id=id)  
    #temp 
    single_sensor_data.delete() 
    return redirect("/sensor_read")

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
    farm_data = Farm.objects.all()
    print(farm_data)
    return render(request,"farm_read.html",{'farm_data':farm_data})  
def farm_update(request, id):  
    single_farm_data = Farm.objects.get(id=id)  
    return render(request,'farm_update.html', {'single_farm_data':single_farm_data})  
def farm_delete(request, id):
    single_farm_data = Farm.objects.get(id=id)  
    single_farm_data.delete()  
    return redirect("/farm_read")
