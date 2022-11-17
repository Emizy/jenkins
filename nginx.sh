#!/bin/bash

sudo cp -rf app.conf /etc/nginx/conf.d
chmod 710 /var/lib/jenkins/workspace/django_jenkins

sudo nginx -t

echo "STARTING NGINX SERVER"
sudo systemctl start nginx
sudo systemctl enable nginx

echo "NGINX HAS BEEN STARTED SUCCESSFULLY"
echo "CHECKING NGINX STATUS"
sudo systemctl status nginx
sudo systemctl restart nginx