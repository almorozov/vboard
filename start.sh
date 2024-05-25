#!/bin/bash

./manage.py makemigrations
./manage.py migrate
./manage.py runserver 7000
#gunicorn -w 3 -b 0.0.0.0:7000 --log-level=info app:app