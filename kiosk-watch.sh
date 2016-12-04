#!/bin/bash

#while 1; do
  while inotifywait -e close_write /var/www/html/kiosk/sites; do 
    ./kiosk-restart.sh;
  done
#done
