#!/bin/bash

MARKET="ATLANTA"

HTML_FILE_PATH="/home/helpdesk/market.html"

GET_PATH="https://github.com/caesar-in-IT/pi-kiosk-script/blob/main/$MARKET.html"

#Update the Script and Restart the Kiosk
 	wget -O $HTML_FILE_PATH $GET_PATH

	sleep 8

	chromium-browser --kiosk --incognito "$HTML_FILE_PATH"
