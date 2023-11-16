sudo crontab -e
  59 23 * * * /sbin/shutdown -r
  @reboot git 
  @reboot /usr/bin/env >> /home/helpdesk/cron_output.txt
  @reboot xset s off
  @reboot xset -dpms
  @reboot xset s no blank
  @reboot unclutter -idle 0.1 -root
  @reboot chromium-browser --start-fullscreen --kiosk /home/helpdesk/Raspberry-Kiosk-Script/youtube.html
