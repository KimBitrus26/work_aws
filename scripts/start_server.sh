#!/bin/bash

cd /home/ubuntu/django-app

python3.8 -m venv venv
source venv/bin/activate
pip install install -r requirements.txt
python3.8 manage.py migrate

python3.8 manage.py runserver 0.0.0.0:8000
