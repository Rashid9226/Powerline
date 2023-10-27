from django.db import models

# Create your models here.
class Consumer(models.Model):
    cons_id = models.AutoField(db_column='Cons_id', primary_key=True)  # Field name made lowercase.
    name = models.CharField(db_column='Name', max_length=25)  # Field name made lowercase.
    address = models.CharField(db_column='Address', max_length=25)  # Field name made lowercase.
    contact_no = models.CharField(db_column='Contact_no', max_length=25)  # Field name made lowercase.
    email_id = models.CharField(max_length=25)

    class Meta:
        managed = False
        db_table = 'consumer'
