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

class CowForm(forms.ModelForm):
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