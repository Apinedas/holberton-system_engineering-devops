#!/usr/bin/env bash
# Changes default listening port to 80

sudo sed -i 's/\tlisten 8080 default_server;/\tlisten 80 default_server;/' /etc/nginx/sites-enabled/default
sudo sed -i 's/\tlisten \[\:\:\]\:8080 default_server ipv6only=on;/\tlisten [::]:80 default_server;/' /etc/nginx/sites-enabled/default
sudo service nginx restart
