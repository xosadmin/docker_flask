#!/bin/bash

if [ ! -f "/app/requirements.txt" ]; then
    echo "Error: requirements.txt not found." >&2
    exit 1
fi

pip3 install --no-cache-dir flask --break-system-packages
pip3 install --no-cache-dir -r /app/requirements.txt --break-system-packages
cd /app
flask run --host=0.0.0.0
