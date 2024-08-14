#!/bin/bash

if [ ! -f "/app/requirements.txt" ]; then
    echo "Error: requirements.txt not found." >&2
    exit 1
fi

pip3 install --no-cache-dir -r /app/requirements.txt
exec gunicorn --workers 4 --bind 0.0.0.0:8000 app:app 2>&1 | tee -a /var/log/gunicorn.log
