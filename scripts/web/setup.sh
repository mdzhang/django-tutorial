#!/usr/bin/env bash

python manage.py createsuperuser
python manage.py migrate
