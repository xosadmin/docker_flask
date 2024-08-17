#!/bin/bash

if [ ! -f "/app/requirements.txt" ]; then
    echo "Error: requirements.txt not found." >&2
    exit 1
fi

pip3 install --no-cache-dir -r /app/requirements.txt --break-system-packages
cd /app
if [ ! -f "/app/uwsgi.ini" ]; then
    echo "No uWSGI configuration found. Using default parameters."
    uwsgi --http :5000 --wsgi-file app.py --callable app
else
    echo "Find uWSGI configuration file. Launching uWSGI based on configuration file..."
    uwsgi --ini uwsgi.ini
fi
