#!/bin/bash

if [ -z "$maip" ]; then
  read -p "IP of the server to deploy to: " maip
fi

rsync --archive --recursive --verbose --delete --chown="www-data:www-data" ./htdocs/ root@"$maip":/var/www/www.minecraft-anarchy.org
