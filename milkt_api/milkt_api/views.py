from django.shortcuts import  render, redirect
from .forms import NewUserForm
from django.contrib.auth import login
from django.contrib import messages

def register_request(request):
  if request.method == "POST":
    form = NewUserForm(request.POST)
    print(form)
    if form.is_valid():
      print("valid form")
      user = form.save()
      print(user)
      # login(request, user)
      messages.success(request, "Registration successful." )
      return redirect("/sensor_data_show")
    messages.error(request, "Unsuccessful registration. Invalid information.")
    print('error')
  form = NewUserForm()
  return render (request=request, template_name="register.html", context={"register_form":form})
  