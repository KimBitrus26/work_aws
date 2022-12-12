#!/bin/bash

DIR="/home/ubuntu/django-app"
if [ -d "$DIR" ]; then
    echo "${DIR} exist"
else
    echo "Creating ${DIR} directory"
    mkdir ${DIR}
fi

