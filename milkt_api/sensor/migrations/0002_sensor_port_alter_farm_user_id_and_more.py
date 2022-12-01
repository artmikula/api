# Generated by Django 4.0.4 on 2022-09-30 07:40

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('sensor', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='sensor',
            name='port',
            field=models.IntegerField(default=3000),
            preserve_default=False,
        ),
        migrations.AlterField(
            model_name='farm',
            name='user_id',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.SET_NULL, to='sensor.user'),
        ),
        migrations.AlterModelTable(
            name='sensor_data',
            table=None,
        ),
    ]
