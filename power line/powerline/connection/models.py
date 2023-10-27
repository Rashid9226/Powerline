from django.db import models

# Create your models here.
class Connection(models.Model):
    conn_id = models.AutoField(primary_key=True)
    o_id = models.IntegerField()
    cons_id = models.IntegerField(db_column='Cons_id')  # Field name made lowercase.
    request = models.CharField(max_length=100)
    status = models.CharField(max_length=25)

    class Meta:
        managed = False
        db_table = 'connection'

