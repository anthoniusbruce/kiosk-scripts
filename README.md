# kiosk-scripts
These scripts are meant to turn a raspberry pi runing raspbian and pixel into a kiosh cycling through web sites.

After downloading the scripts, set them all to executable with:
  sudo chmod +x *.sh

Add /usr/kiosk-scripts to the PATH by editng /etc/environment:
  PATH=$PATH:/usr/kiosk-scripts (or wherever you cloned the scripts at)

To configure the pi to be a kiosk turn off the screen saver and such and to kick off the script at desktop start 
change the .config/lxsession/LXDE-pi/autostart file to be:
  @lxpanel --profile LXDE-pi
  @pcmanfm --desktop --profile LXDE-pi
  #@xscreensaver -no-splash
  @point-rpi
  @xset s off
  @xset -dpms
  @xset s noblank
  @/usr/kiosk-scripts/kiosk-watch.sh &
  @/usr/kiosk-scripts/kiosk-terminal.sh

