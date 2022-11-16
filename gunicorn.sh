#!/bin/bash

source gymenv/bin/activate
sudo cp -rf gunicorn.socket /etc/systemd/system/
sudo cp -rf gunicorn.service /etc/systemd/system/

echo "$USER"
echo "$PWD"

sudo systemctl daemon-reload
sudo systemctl start gunicorn
sudo systemctl enable gunicorn

echo "CONFIRMING GUNICORN SETUP STATUS"

sudo systemctl status gunicorn
sudo systemctl restart gunicorn

echo "GUNICORN SETUP SUCCESSFULLY"