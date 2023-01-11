#!/bin/bash
set -e
source /image_build/buildconfig

minimal_apt_get_install nginx

cp /image_build/config/nginx.conf /etc/nginx/nginx.conf

## Install Nginx runit service.
mkdir /etc/service/nginx
cp /image_build/runit/nginx /etc/service/nginx/run

mkdir /etc/service/nginx-log-forwarder
cp /image_build/runit/nginx-log-forwarder /etc/service/nginx-log-forwarder/run
rm /etc/nginx/sites-enabled/default && rm /etc/nginx/sites-available/default



