!/bin/bash

MARKET="ATLANTA"

HTML_FILE_PATH="/home/helpdesk/market.html"

GET_PATH="https://raw.githubusercontent.com/caesar-in-IT/pi-kiosk-script/main/$MARKET.html"

#Update the Script and Restart the Kiosk
 	wget -O "$HTML_FILE_PATH" "$GET_PATH"

	sleep 3

	chromium-browser --kiosk --incognito "$HTML_FILE_PATH"
