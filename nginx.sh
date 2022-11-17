#!/bin/bash

sudo cp -rf web_nginx /etc/nginx/sites-available
ENABLED_WEB_NGINX=/etc/nginx/sites-enabled/web_nginx
if test -f "$ENABLED_WEB_NGINX"; then
  echo "NGINX WEB SCRIPT ALREADY EXIST INSIDE ENABLED FILE, NOT CREATING SYMBOLIC"
else
  sudo ln -s /etc/nginx/sites-available/web_nginx /etc/nginx/sites-enabled
fi

chmod 710 /var/lib/jenkins/workspace/django_jenkins

sudo nginx -t

echo "STARTING NGINX SERVER"
sudo systemctl start nginx
sudo systemctl enable nginx

echo "NGINX HAS BEEN STARTED SUCCESSFULLY"
echo "CHECKING NGINX STATUS"
sudo systemctl status nginx
sudo systemctl restart nginx