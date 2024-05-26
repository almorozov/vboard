#!/bin/bash

./manage.py makemigrations
./manage.py migrate
./manage.py collectstatic
./manage.py runserver 0.0.0.0:7000
#gunicorn -b 0.0.0.0:7000 --chdir ./vboard vboard.wsgi:application