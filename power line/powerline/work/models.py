from django.db import models

# Create your models here.
class Work(models.Model):
    w_id = models.AutoField(primary_key=True)
    e_id = models.IntegerField(db_column='E_id')  # Field name made lowercase.
    o_id = models.IntegerField()
    work = models.CharField(max_length=25)
    work_status = models.CharField(max_length=25)

    class Meta:
        managed = False
        db_table = 'work'
