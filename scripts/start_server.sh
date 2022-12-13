#!/bin/bash

cd /home/ubuntu/django-app

# python3.8 -m venv venv
# source venv/bin/activate

python3.8 manage.py runserver 0.0.0.0:8000
