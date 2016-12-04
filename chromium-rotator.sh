#!/bin/bash
WID=$(xdotool search --onlyvisible --class chromium|head -1)
xdotool windowactivate ${WID}
xdotool key F5 ctrl+Tab
