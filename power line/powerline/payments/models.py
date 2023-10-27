from django.db import models

# Create your models here.
class Payment(models.Model):
    p_id = models.AutoField(primary_key=True)
    o_id = models.IntegerField()
    cons_id = models.IntegerField(db_column='Cons_id')  # Field name made lowercase.
    bill_amount = models.CharField(max_length=11)
    payment_method = models.CharField(db_column='payment method', max_length=25)  # Field renamed to remove unsuitable characters.
    payment_status = models.CharField(db_column='payment status', max_length=25)  # Field renamed to remove unsuitable characters.
    date = models.DateField(db_column='Date')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'payment'
