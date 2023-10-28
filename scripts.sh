#!/bin/sh

python manage.py makemigrations
python manage.py migrate
python -m pytest --junit-xml=./reports/test_report.xml
python manage.py runserver 0.0.0.0:8005