# Generated by Django 4.0.4 on 2022-09-22 09:27

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('sensor', '0003_sensor_port'),
    ]

    operations = [
        migrations.AlterField(
            model_name='farm',
            name='user_id',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.SET_NULL, to='sensor.user'),
        ),
    ]
