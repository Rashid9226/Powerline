from django.db import models
from organisation.models import Organization
from consumer.models import Consumer
# Create your models here.
class Complaint(models.Model):
    comp_id = models.AutoField(primary_key=True)
    # o_id = models.IntegerField()
    o = models.ForeignKey(Organization,to_field='o_id',on_delete=models.CASCADE)
    complaint = models.CharField(max_length=100)
    reply = models.CharField(max_length=100)
    # cons_id = models.IntegerField(db_column='Cons_id')  # Field name made lowercase.
    cons = models.ForeignKey(Consumer,to_field='cons_id',on_delete=models.CASCADE)
    class Meta:
        managed = False
        db_table = 'complaint'

