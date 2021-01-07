#!/bin/sh

nginx "$@"
oldcksum=`cksum /etc/nginx/conf.d/default.conf`

while true; do
  newcksum=`cksum /etc/nginx/conf.d/default.conf`
  if [ "$newcksum" != "$oldcksum" ]; then
    date=$(date '+%Y-%m-%d %H:%M:%S')
    echo "[${date}] config file update detected."
    oldcksum=$newcksum
    nginx -s reload
  fi
  sleep 5
done
