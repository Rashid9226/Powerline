# Generated by Django 3.2.15 on 2022-10-30 07:28

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Login',
            fields=[
                ('login_id', models.AutoField(primary_key=True, serialize=False)),
                ('username', models.CharField(max_length=25)),
                ('password', models.CharField(max_length=25)),
                ('type', models.CharField(max_length=25)),
                ('uid', models.IntegerField()),
            ],
            options={
                'db_table': 'login',
                'managed': False,
            },
        ),
    ]
