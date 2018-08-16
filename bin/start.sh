#!/bin/bash

ps -fe|grep nginx |grep -v grep
if [ $? -ne 0 ] 
then
  sudo /srv/soft/openresty-1.13.6.2/nginx/sbin/nginx  -t -c /srv/share/github/openresty-helloworld/config/nginx.conf
  sudo /srv/soft/openresty-1.13.6.2/nginx/sbin/nginx  -c /srv/share/github/openresty-helloworld/config/nginx.conf
  echo "nginx start"
else
  sudo /srv/soft/openresty-1.13.6.2/nginx/sbin/nginx  -t -c /srv/share/github/openresty-helloworld/config/nginx.conf
  sudo /srv/soft/openresty-1.13.6.2/nginx/sbin/nginx  -s reload -c /srv/share/github/openresty-helloworld/config/nginx
  .conf
  echo "nginx reload"
fi
echo -e "===========================================\n\n"
tail -f /srv/soft/openresty-1.13.6.2/nginx/logs/error.log
