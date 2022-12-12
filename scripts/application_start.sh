#!/bin/bash

# Destination folder
cd /home/ec2-user/django-app

sudo apt update
sudo apt -y upgrade

sudo apt install -y python3.9 python3.9-dev python3.9-venv
python3.9 -m venv venv
source venv/bin/activate
pip install -r requirements.txt


gunicorn aws.wsgi:application --bind 0.0.0.0:8000 --daemon
