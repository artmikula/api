from django import forms
from sensor.models import *

class Sensor_DataForm(forms.ModelForm):
    class Meta:
        model = Sensor_Data
        fields = "__all__"

class FarmForm(forms.ModelForm):
    class Meta:
        model = Farm
        fields = "__all__"

class SensorForm(forms.ModelForm):
    class Meta:
        model = Sensor
        fields = "__all__"
