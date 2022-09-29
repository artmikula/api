from django import forms
from sensor.models import *
from django.forms import ModelChoiceField

class Sensor_DataForm(forms.ModelForm):
    class Meta:
        model = Sensor_Data
        fields = "__all__"

class FarmForm(forms.ModelForm):
    farm_name = forms.CharField(widget=forms.TextInput())
    user_id = forms.ModelChoiceField(queryset=User.objects.all(), initial=0
    )
    class Meta:
        model = Farm
        fields = "__all__"

class SensorForm(forms.ModelForm):
    uid = forms.IntegerField(widget=forms.TextInput())
    owner = forms.ModelChoiceField(queryset=User.objects.all(), initial=0)
    ip_addr = forms.CharField(widget=forms.TextInput())
    port = forms.IntegerField(widget=forms.TextInput())

    class Meta:
        model = Sensor
        fields = "__all__"

class CowForm(forms.ModelForm):
    cow_id = forms.CharField(widget=forms.TextInput())
    farm_id = forms.ModelChoiceField(queryset=Farm.objects.all(), initial=0)
    class Meta:
        model = Cow
        fields = "__all__"

class Cow_SensorForm(forms.ModelForm):
    class Meta:
        model = Cow_Sensor
        fields = "__all__"

class CommandForm(forms.ModelForm):
    class Meta:
        model = Command
        fields = "__all__"

class UserForm(forms.ModelForm):
    class Meta:
        model = User
        fields = "__all__"