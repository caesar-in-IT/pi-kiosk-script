#!/bin/bash

#Path to the HTML with Youtube
HTML_FILE_PATH="/home/helpdesk/Script2.0.html"

#Start Chrome in Kiosk
start_chrome_kiosk() {
	#Start Chrome in kiosk mode and open the specified HTML
	chromium-browser --kiosk --incognito "$HTML_FILE_PATH"
}

#Update the Script and Restart the Kiosk
update_and_restart() {
	#Pull in new script from github
	wget -O /home/helpdesk/script.sh https://github.com/caesar-in-IT/pi-kiosk-script/blob/main/script.sh

	#Give new script exexcute permission
	chmod +x /home/helpdesk/script.sh

	#Restart the Kiosk with new script
	/home/helpdesk/script.sh
}

#Main Function
main() {
	#Start Chrome in Kiosk Mode
	start_chrome_kiosk

	#Other commands

	#You can use loop to run the script indefinitely
	while true; do
		#Check for a signal or condition to update and restart
		#For example, you can use a GPIO button press or a network signal

		#For the sake of an example, "update_signal.txt"
		if [-e "update_signal.txt" ]; then 
			#Remove the update signal 
			rm "update_signal.txt"

			#Update and Restart Kiosk
			update_and_restart
		fi

		#Any other conditions for updating and restarting

		#Sleep for a while before checking again.
		sleep 10
	done
}

#Run the main function
main
