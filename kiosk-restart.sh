#!/bin/bash

sudo killall lxterminal
sudo killall kiosk-terminal.sh
sudo killall kiosk.sh
/usr/kiosk-scripts/kiosk-terminal.sh &
