from django.db import models
from organisation.models import Organization
from consumer.models import Consumer
# Create your models here.
class Employee(models.Model):
    e_id = models.AutoField(db_column='E_id', primary_key=True)  # Field name made lowercase.
    name = models.CharField(db_column='Name', max_length=25)  # Field name made lowercase.
    age = models.IntegerField(db_column='Age')  # Field name made lowercase.
    address = models.CharField(db_column='Address', max_length=25)  # Field name made lowercase.
    department = models.CharField(db_column='Department', max_length=25)  # Field name made lowercase.
    salary = models.IntegerField(db_column='Salary')  # Field name made lowercase.
    contact_no = models.CharField(db_column='Contact_no', max_length=10)  # Field name made lowercase.
    # status = models.CharField(max_length=20)
    # o = models.ForeignKey(Organization, to_field='o_id', on_delete=models.CASCADE)

    class Meta:
        managed = False
        db_table = 'employee'
