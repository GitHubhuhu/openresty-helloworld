#!/bin/bash

sudo /srv/soft/openresty-1.13.6.2/nginx/sbin/nginx  -t -c /srv/share/github/openresty-helloworld/config/nginx.conf
sudo /srv/soft/openresty-1.13.6.2/nginx/sbin/nginx  -s quit -c /srv/share/github/openresty-helloworld/config/nginx.conf

echo "nginx stop"
echo -e "===========================================\n\n"
tail -f /srv/soft/openresty-1.13.6.2/nginx/logs/error.log
