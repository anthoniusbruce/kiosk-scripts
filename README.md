# kiosk-scripts
These scripts are meant to turn a raspberry pi runing raspbian and pixel into a kiosh cycling through web sites.

After downloading the scripts, set them all to executable with:
  sudo chmod +x *.sh

Add /usr/kiosk-scripts to the PATH by editng /etc/profile:
  if [ "`id -u`" -eq 0 ]; then
    PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"
  else
    PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/games:/usr/games:/usr/kiosk-scripts"

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
change /etc/kbd/config
  BLANK_TIME=0 (Was 30)
  POWERDOWN_TIME=0 (Was 30)

Change the location of where to find the list of web sites for the kiosk in the scripts kiosk-terminal.sh and kiosk-watch.sh
