sudo crontab -e
  59 23 * * * /sbin/shutdown -r
  @reboot /usr/bin/env >> /home/helpdesk/cron_output.txt
