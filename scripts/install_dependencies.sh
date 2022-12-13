#!/bin/bash

cd /home/ubuntu/django-app

python3.8 -m venv venv
source venv/bin/activate
pip install install -r requirements.txt
