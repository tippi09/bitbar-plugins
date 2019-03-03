#!/bin/bash

# <bitbar.title>Kodi</bitbar.title>
# <bitbar.version>1.0</bitbar.version>
# <bitbar.author>Sascha</bitbar.author>
# <bitbar.author.github>tippi09</bitbar.author.github>
# <bitbar.desc>Starts or stops Kodi on HiFiPi.</bitbar.desc>
# <bitbar.image></bitbar.image>
# <bitbar.dependencies></bitbar.dependencies>
# <bitbar.abouturl></bitbar.abouturl>

# play/pause
if [ "$1" = "start" ] || [ "$1" = "stopkodi" ] || [ "$1" = "stopkodiandtv" ]; then
    ssh -t tippi09@hifipi "sudo ./kodi.sh $1"
	exit
fi

echo '🎬'
echo "---"
echo "Start Kodi | bash='$0' param1=start param2=$app refresh=true terminal=false"
echo "Stop Kodi | bash='$0' param1=stopkodi param2=$app refresh=true terminal=false"
echo "Stop Kodi and turn off TV | bash='$0' param1=stopkodiandtv param2=$app refresh=true terminal=false"
