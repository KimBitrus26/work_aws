#!/bin/bash

cd /home/ubuntu

# python3.8 -m venv venv
# source venv/bin/activate

# # python3.8 manage.py runserver 0.0.0.0:8000

# gunicorn aws.wsgi --bind 0.0.0.0:8000 --daemon
sudo docker-compose up --build -d --remove-orphans