#!/bin/bash

#while 1; do
  while inotifywait -e close_write -e attrib /var/www/html/kiosk/sites; do 
    /usr/kiosk-scripts/kiosk-restart.sh;
  done
#done
