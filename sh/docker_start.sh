#!/bin/bash

NGINX="/usr/sbin/nginx -g 'daemon off;'"

if [ "$CRON_EXP" == "*" ]; then
  eval ${NGINX}
else
  LOG="/var/log/cron.log"
  touch $LOG
  CMD="echo `date` >> $LOG && timeout $DURATION $NGINX || echo ' down' >> $LOG" 
  echo "$CRON_EXP root $CMD"  > /etc/cron.d/nginx
  cron
  tail -F $LOG
fi
echo $?
