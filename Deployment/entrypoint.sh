#!/bin/sh

python manage.py migrate --no-input

python manage.py collectstatic --no-input

gunicorn djangokubernetesproject.wsgi:application --bind :8000 --workers 10
