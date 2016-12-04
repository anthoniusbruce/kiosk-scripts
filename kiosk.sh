#!/bin/bash

# clear chromium setting that may indicate there was a crash
sed -i 's/"exited_cleanly":false/"exited_cleanly":true/' ~/.config/chromium/Default/Preferences
sed -i 's/"exit_type":"Crashed"/"exit_type":"Normal"/' ~/.config/chromium/Default/Preferences

# load web sites from the file provided on the command line
sites_file=$1
readarray -t sites < $sites_file
chromium-browser --enable-logging --v=1 --noerrdialogs --start-fullscreen ${sites[*]} &
#chromium-browser --noerrdialogs ${sites[*]} &

# get the tabs cycling
watch -n60 "./chromium-rotator.sh"
