#!/bin/bash

DIR="/home/ec2-user/django-app"
if [ -d "$DIR" ]; then
    echo "${DIR} exist"
else
    echo "Creating ${DIR} directory"
    mkdir ${DIR}
fi

