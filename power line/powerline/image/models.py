from django.db import models
from consumer.models import Consumer
# Create your models here.
class ImageReading(models.Model):
    i_id = models.AutoField(primary_key=True)
    # cons_id = models.IntegerField(db_column='Cons_id')  # Field name made lowercase.
    cons=models.ForeignKey(Consumer,to_field='cons_id',on_delete=models.CASCADE)
    o_id = models.IntegerField()
    image = models.CharField(max_length=100)
    reading = models.CharField(max_length=25)

    class Meta:
        managed = False
        db_table = 'image_reading'
