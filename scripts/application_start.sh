#!/bin/bash

# Destination folder
cd /home/ubuntu/django-app

sudo apt update
sudo apt -y upgrade
sudo apt install -y python3.8-venv
python3.8 -m venv venv
source venv/bin/activate
pip install -r requirements.txt
python3.8 manage.py makemigrations
python3.8 manage.py migrate
python3.8 manage.py runserver 0.0.0.0:8000
