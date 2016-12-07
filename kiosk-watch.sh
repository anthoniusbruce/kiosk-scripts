#!/bin/bash

#while 1; do
  while inotifywait -e close_write -e close_nowrite /var/www/html/kiosk/sites; do 
    /usr/kiosk-scripts/kiosk-restart.sh;
  done
#done
