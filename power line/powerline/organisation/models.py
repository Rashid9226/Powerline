from django.db import models

# Create your models here.

class Organization(models.Model):
    o_id = models.AutoField(primary_key=True)
    name = models.CharField(db_column='Name', max_length=25)  # Field name made lowercase.
    address = models.CharField(db_column='Address', max_length=25)  # Field name made lowercase.
    contact_no = models.CharField(db_column='Contact_no', max_length=10)  # Field name made lowercase.
    email_id = models.CharField(max_length=25)
    status = models.CharField(max_length=30)

    class Meta:
        managed = False
        db_table = 'organization'

