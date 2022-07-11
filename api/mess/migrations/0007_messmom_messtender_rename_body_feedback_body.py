# Generated by Django 4.0.4 on 2022-07-11 15:05

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('mess', '0006_feedback'),
    ]

    operations = [
        migrations.CreateModel(
            name='MessMom',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('date', models.DateField(default=None, null=True)),
                ('file', models.FileField(upload_to='mom/')),
                ('title', models.CharField(max_length=100)),
                ('description', models.TextField()),
                ('created_at', models.DateTimeField(auto_now=True)),
            ],
        ),
        migrations.CreateModel(
            name='MessTender',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('date', models.DateField(default=None, null=True)),
                ('contractor', models.CharField(max_length=100)),
                ('file', models.FileField(upload_to='tender/')),
                ('title', models.CharField(max_length=100)),
                ('description', models.TextField(null=True)),
                ('created_at', models.DateTimeField(auto_now=True)),
            ],
        ),
        migrations.RenameField(
            model_name='feedback',
            old_name='Body',
            new_name='body',
        ),
    ]
