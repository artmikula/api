from pickle import FALSE
from django.db import models

class User(models.Model):
  PERMISSIONS = (
    (0, 'admin'),
    (1, 'user'),
  )
  user_id = models.CharField(max_length=64)
  pw = models.CharField(max_length=255)
  permission = models.IntegerField(choices=PERMISSIONS)
  is_deleted = models.BooleanField(default=FALSE)
  create_time = models.DateTimeField(auto_now=True)
  update_time = models.DateTimeField(auto_now=True)
  delete_time = models.DateTimeField(auto_now=True)
  
  def __str__(self):
    return self.user_id

class Farm(models.Model):
  farm_name = models.CharField(max_length=30)
  is_deleted = models.BooleanField(default=FALSE)
  create_time = models.DateTimeField(auto_now=True)
  update_time = models.DateTimeField(auto_now=True)
  delete_time = models.DateTimeField(auto_now=True)
  user_id = models.ForeignKey(User, on_delete=models.DO_NOTHING)
  
  def __str__(self):
    return self.farm_name

class Cow(models.Model):
  cow_id = models.CharField(max_length=255)
  farm_id = models.ForeignKey(Farm, on_delete=models.DO_NOTHING)
  is_deleted = models.BooleanField(default=FALSE)
  create_time = models.DateTimeField(auto_now=True)
  update_time = models.DateTimeField(auto_now=True)
  delete_time = models.DateTimeField(auto_now=True)
  
  def __str__(self):
    return self.cow_id

class Sensor(models.Model):
  uid = models.CharField(max_length=255)
  owner = models.ForeignKey(User, on_delete=models.DO_NOTHING)
  ip_addr = models.CharField(max_length=255)
  port = models.IntegerField()
  is_deleted = models.BooleanField(default=FALSE)
  create_time = models.DateTimeField(auto_now=True)
  update_time = models.DateTimeField(auto_now=True)
  delete_time = models.DateTimeField(auto_now=True)

  def __str__(self):
    return self.uid

class Cow_Sensor(models.Model):
  cow_id = models.ForeignKey(Cow, on_delete=models.DO_NOTHING)
  sensor_id = models.ForeignKey(Sensor, on_delete=models.DO_NOTHING)
  is_deleted = models.BooleanField(default=FALSE)
  create_time = models.DateTimeField(auto_now=True)
  update_time = models.DateTimeField(auto_now=True)
  delete_time = models.DateTimeField(auto_now=True)
    
  def __str__(self):
    return self.cow_id

class Sensor_Data(models.Model):
  sensor_id = models.ForeignKey(Sensor, on_delete=models.DO_NOTHING)
  tick = models.CharField(max_length=255)
  Acc_X = models.IntegerField()
  Acc_Y = models.IntegerField()
  Acc_Z = models.IntegerField()
  Gyro_X = models.IntegerField()
  Gyro_Y = models.IntegerField()
  Gyro_Z = models.IntegerField()
  temperature = models.IntegerField()
  battery = models.FloatField()
  rcv_time = models.DateTimeField(auto_now=True)
  is_deleted = models.BooleanField(default=FALSE)
  create_time = models.DateTimeField(auto_now=True)
  update_time = models.DateTimeField(auto_now=True)
  delete_time = models.DateTimeField(auto_now=True)
    
  def __str__(self):
    return self.sensor_id

class Command(models.Model):
  COMMAND_STATUS = (
    (0, 'created'),
    (1, 'send'),
    (2, 'execution success'),
    (3, 'execution failed'),
  )
  sensor_id = models.ForeignKey(Sensor, on_delete=models.DO_NOTHING)
  command_type = models.IntegerField()
  command = models.IntegerField()
  trigerring_period = models.IntegerField()
  active_time = models.IntegerField()
  period_time = models.IntegerField()
  bit7 = models.BooleanField()
  bit6 = models.BooleanField()
  bit5 = models.BooleanField()
  bit4 = models.BooleanField()
  bit3 = models.BooleanField()
  bit2 = models.BooleanField()
  bit1 = models.BooleanField()
  bit0 = models.BooleanField()
  data_sending_period = models.IntegerField()
  command_status = models.IntegerField(choices=COMMAND_STATUS)
  rcv_code = models.IntegerField()
  is_deleted = models.BooleanField(default=FALSE)
  create_time = models.DateTimeField(auto_now=True)
  update_time = models.DateTimeField(auto_now=True)
  delete_time = models.DateTimeField(auto_now=True)
    
  def __str__(self):
    return self.command


class Log(models.Model):
  DIV = (
    (0, 'Command log'),
    (1, 'Sensor_data log'),
  )
  LOGGING_TYPE = (
    (0, 'request'),
    (1, 'response'),
    (2, 'receive'),
  )
  div = models.IntegerField(choices=DIV)
  command_id = models.ForeignKey(Command, on_delete=models.DO_NOTHING)
  sensor_uid = models.ForeignKey(Sensor, on_delete=models.DO_NOTHING)
  sensor_data_id = models.ForeignKey(Sensor_Data, on_delete=models.DO_NOTHING)
  logging_type = models.IntegerField(choices=LOGGING_TYPE)
  response_code = models.IntegerField()
  logging_msg = models.CharField(max_length=255)
  is_deleted = models.BooleanField(default=FALSE)
  create_time = models.DateTimeField(auto_now=True)
  update_time = models.DateTimeField(auto_now=True)
  delete_time = models.DateTimeField(auto_now=True)

    
  def __str__(self):
    return self.logging_msg
